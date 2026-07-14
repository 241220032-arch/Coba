/* ============================================================
   app.js — Logika Front-end Tuntunan Tata Cara Sholat
   F-01 daftar gerakan | F-02 detail | F-03 audio | F-04 video
   F-05 next/prev | F-06 autoplay
   ============================================================ */

const SholatApp = (() => {
  let autoplayActive = false;
  let autoplayTimer = null;
  const AUTOPLAY_DELAY_MS = 6000; // jeda antar-gerakan saat autoplay

  async function fetchJSON(url) {
    const res = await fetch(url);
    if (!res.ok) throw new Error('Gagal memuat data dari server');
    return res.json();
  }

  // ---------- F-01: Daftar Gerakan ----------
  async function renderGerakanList(kategori) {
    const listEl = document.getElementById('gerakan-list');
    try {
      const json = await fetchJSON(`api/gerakan.php?kategori=${encodeURIComponent(kategori)}`);
      const data = json.data || [];
      if (!data.length) {
        listEl.innerHTML = '<li class="loading">Belum ada data gerakan.</li>';
        return;
      }
      listEl.innerHTML = data.map(g => `
        <li class="gerakan-item" data-id="${g.id}">
          <span class="gerakan-num">${g.urutan}</span>
          <span class="gerakan-name">${escapeHTML(g.nama)}</span>
          <span class="gerakan-arrow">›</span>
        </li>
      `).join('');

      listEl.querySelectorAll('.gerakan-item').forEach(item => {
        item.addEventListener('click', () => {
          window.location.href = `detail.php?id=${item.dataset.id}&kategori=${encodeURIComponent(kategori)}`;
        });
      });
    } catch (err) {
      listEl.innerHTML = `<li class="loading">⚠️ ${err.message}. Pastikan backend &amp; database aktif.</li>`;
    }
  }

  // ---------- F-02/F-03/F-04: Detail Gerakan ----------
  async function renderDetail(id, kategori) {
    const container = document.getElementById('detail-content');
    const bcCurrent = document.getElementById('bc-current');
    const btnPrev = document.getElementById('btn-prev');
    const btnNext = document.getElementById('btn-next');
    const btnAutoplay = document.getElementById('btn-autoplay');

    stopAutoplayTimer();

    try {
      const json = await fetchJSON(`api/detail.php?id=${id}`);
      const g = json.data;
      if (bcCurrent) bcCurrent.textContent = g.nama;
      document.title = `${g.nama} | Tuntunan Tata Cara Sholat`;
      document.body.dataset.id = id;

      const bacaanHTML = (g.bacaan || []).map(b => `
        <div class="bacaan-block">
          ${b.teks_arab ? `<div class="bacaan-arab">${escapeHTML(b.teks_arab)}</div>` : ''}
          ${b.teks_latin ? `<div class="bacaan-latin">${escapeHTML(b.teks_latin)}</div>` : ''}
          ${b.terjemahan ? `<div class="bacaan-terjemahan">"${escapeHTML(b.terjemahan)}"</div>` : ''}
          ${b.audio_url ? `<audio controls src="${escapeAttr(b.audio_url)}">Browser Anda tidak mendukung audio.</audio>` : ''}
          ${b.sumber ? `<div class="bacaan-sumber">Sumber: ${escapeHTML(b.sumber)}</div>` : ''}
        </div>
      `).join('') || '<p class="bacaan-terjemahan">Tidak ada bacaan khusus pada gerakan ini.</p>';

      const videoHTML = g.video_url ? `
        <button class="video-toggle" id="toggle-video">🎬 Tampilkan Video</button>
        <div class="video-wrap" id="video-wrap" style="display:none;">
          <video controls src="${escapeAttr(g.video_url)}"></video>
        </div>
      ` : '';

      container.innerHTML = `
        ${g.gambar_url ? `<img class="detail-image" src="${escapeAttr(g.gambar_url)}" alt="${escapeAttr(g.nama)}" onerror="this.style.display='none'">` : ''}
        <h1 class="detail-title">${g.urutan}. ${escapeHTML(g.nama)}</h1>
        <p class="detail-desc">${escapeHTML(g.deskripsi || '')}</p>
        ${bacaanHTML}
        ${videoHTML}
      `;

      const toggleVideoBtn = document.getElementById('toggle-video');
      if (toggleVideoBtn) {
        toggleVideoBtn.addEventListener('click', () => {
          const wrap = document.getElementById('video-wrap');
          const show = wrap.style.display === 'none';
          wrap.style.display = show ? 'block' : 'none';
          toggleVideoBtn.textContent = show ? '🎬 Sembunyikan Video' : '🎬 Tampilkan Video';
        });
      }

      // ---------- F-05: Navigasi Next/Previous ----------
      btnPrev.disabled = !g.prev_id;
      btnNext.disabled = !g.next_id;
      btnPrev.onclick = () => g.prev_id && goTo(g.prev_id, kategori);
      btnNext.onclick = () => g.next_id && goTo(g.next_id, kategori);

      // ---------- F-06: Autoplay ----------
      btnAutoplay.onclick = () => toggleAutoplay(g, kategori, btnAutoplay);

      if (sessionStorage.getItem('autoplay') === '1') {
        startAutoplayTimer(g, kategori, btnAutoplay);
      }

      // Auto-putar audio pertama jika autoplay aktif
      if (sessionStorage.getItem('autoplay') === '1') {
        const firstAudio = container.querySelector('audio');
        if (firstAudio) firstAudio.play().catch(() => {});
      }

    } catch (err) {
      container.innerHTML = `<p class="loading">⚠️ ${err.message}. Pastikan backend &amp; database aktif.</p>`;
    }
  }

  function goTo(id, kategori) {
    window.location.href = `detail.php?id=${id}&kategori=${encodeURIComponent(kategori)}`;
  }

  function toggleAutoplay(g, kategori, btn) {
    const active = sessionStorage.getItem('autoplay') === '1';
    if (active) {
      sessionStorage.setItem('autoplay', '0');
      stopAutoplayTimer();
      btn.textContent = '▶ Putar Otomatis';
      btn.classList.remove('playing');
    } else {
      sessionStorage.setItem('autoplay', '1');
      btn.textContent = '⏸ Hentikan Autoplay';
      btn.classList.add('playing');
      startAutoplayTimer(g, kategori, btn);
    }
  }

  function startAutoplayTimer(g, kategori, btn) {
    stopAutoplayTimer();
    btn.textContent = '⏸ Hentikan Autoplay';
    btn.classList.add('playing');
    autoplayTimer = setTimeout(() => {
      if (g.next_id) {
        goTo(g.next_id, kategori);
      } else {
        sessionStorage.setItem('autoplay', '0');
      }
    }, AUTOPLAY_DELAY_MS);
  }

  function stopAutoplayTimer() {
    if (autoplayTimer) clearTimeout(autoplayTimer);
    autoplayTimer = null;
  }

  function escapeHTML(str) {
    if (!str) return '';
    const d = document.createElement('div');
    d.textContent = str;
    return d.innerHTML;
  }
  function escapeAttr(str) {
    return (str || '').replace(/"/g, '&quot;');
  }

  return { renderGerakanList, renderDetail };
})();
