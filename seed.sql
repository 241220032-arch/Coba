USE tatacara_sholat;

-- -------------------------------------------------
-- Identitas Kelompok
-- -------------------------------------------------
INSERT INTO kelompok (nama_kelompok, prodi, mata_kuliah, dosen) VALUES
('Kelompok 1', 'Manajemen Bisnis Syariah', 'Pengembangan Aplikasi Web', 'Dedy Susanto, S.Pd.I., M.M.');

-- -------------------------------------------------
-- Kategori
-- -------------------------------------------------
INSERT INTO kategori (nama) VALUES ('dewasa'), ('anak');
SELECT * FROM kategori;

-- -------------------------------------------------
-- Anggota Kelompok
-- -------------------------------------------------
INSERT INTO anggota (id_kelompok, nama, nim, peran, urutan) VALUES
(1,'TRISYA SUPRIATI CAROLINA',  NULL, 'Ketua Tim / Project Manager',     1),
(1,'REZA RAMADHAN',              NULL, 'Front-end Developer',              2),
(1,'MOCH YANWAR QADAVI',         NULL, 'Back-end Developer',               3),
(1,'SURYA HAFAZH',               NULL, 'Database & Content Engineer',      4),
(1,'PUTRI CANTIKA CITRA SRI HADIANTO', NULL, 'QA, Dokumentasi & Deployment', 5);

-- =========================================================
-- KATEGORI DEWASA (id_kategori = 1)
-- =========================================================
INSERT INTO gerakan (id_kategori, nama, urutan, deskripsi, gambar_url, video_url) VALUES
(1,'Niat dan Berdiri Menghadap Kiblat (Qiyam)',1,
 'Berdiri tegak menghadap kiblat. Niat adalah pekerjaan hati — cukup menghadirkan kesadaran dalam hati bahwa akan menunaikan sholat tertentu. Muhammadiyah tidak mengajarkan melafalkan niat (ushalli...) secara lisan sebelum takbir.',
 'assets/img/dewasa/01-qiyam.jpg','assets/video/dewasa/01-qiyam.mp4'),

(1,'Takbiratul Ihram',2,
 'Angkat kedua tangan sejajar bahu atau telinga seraya mengucapkan Allahu Akbar. Jari-jari dibentangkan, telapak tangan menghadap kiblat, ujung jari sejajar bagian atas telinga atau bahu. Setelah takbir, tangan kanan diletakkan di atas punggung telapak tangan kiri, pergelangan, dan lengan bawah kiri, didekapkan di dada (bersedekap).',
 'assets/img/dewasa/02-takbiratul-ihram.jpg',''),

(1,'Bersedekap — Membaca Doa Iftitah',3,
 'Setelah bersedekap, bacalah doa iftitah. Menurut HPT Muhammadiyah, doa iftitah yang diprioritaskan adalah Allahumma Baid karena keshahihannya sangat kuat (Muttafaq alaih / HR. Bukhari & Muslim).',
 'assets/img/dewasa/03-bersedekap.jpg','assets/video/dewasa/03-bersedekap.mp4'),

(1,'Membaca Al-Fatihah dan Surah',4,
 'Sebelum Al-Fatihah, bacalah Taawudz dan Basmalah. Basmalah pada sholat Jahar (Maghrib, Isya, Subuh) dibaca secara Sirr (lirih), mengikuti riwayat Anas bin Malik ra. Setelah Al-Fatihah ucapkan Aamiin dengan suara keras pada sholat Jahar. Lanjutkan membaca surah dari Al-Quran.',
 'assets/img/dewasa/04-membaca-surah.jpg','assets/video/dewasa/04-membaca-surah.mp4'),

(1,'Rukuk',5,
 'Angkat tangan seperti takbiratul ihram lalu bungkukkan badan. Ketentuan HPT: (1) Punggung harus rata/lurus hingga andaikan ditaruh air di atasnya tidak tumpah. (2) Tangan memegang lutut dengan jari-jari direnggangkan mencengkeram lutut. (3) Siku dijauhkan dari lambung.',
 'assets/img/dewasa/05-rukuk.jpg','assets/video/dewasa/05-rukuk.mp4'),

(1,'I\'tidal (Bangkit dari Rukuk)',6,
 'Bangkit dari rukuk dengan mengangkat tangan seperti takbir seraya mengucapkan Sami allahu liman hamidah. Menurut HPT, setelah berdiri tegak tangan DILEPASKAN lurus ke bawah (tidak bersedekap kembali). Ini disebut irsal.',
 'assets/img/dewasa/06-itidal.jpg','assets/video/dewasa/06-itidal.mp4'),

(1,'Sujud Pertama',7,
 'Turun untuk sujud. Tujuh anggota badan wajib menempel lantai: dahi (termasuk hidung), dua telapak tangan, dua lutut, dan dua ujung kaki. Ujung jari kaki wajib ditekuk menghadap kiblat. Siku diangkat, tidak menempel ke lantai atau lambung.',
 'assets/img/dewasa/07-sujud-1.jpg','assets/img/video/07-sujud-1.mp4'),

(1,'Duduk di Antara Dua Sujud (Iftirasy)',8,
 'Bangun dari sujud, duduklah dengan posisi Iftirasy yaitu duduk di atas telapak kaki kiri, kaki kanan ditegakkan.',
 'assets/img/dewasa/08-duduk-iftirasy.jpg','assets/video/dewasa/08-duduk-iftirasy.mp4'),

(1,'Sujud Kedua',9,
 'Sujud kedua dengan tata cara yang sama seperti sujud pertama. Tujuh anggota badan menempel lantai, ujung jari kaki ditekuk menghadap kiblat.',
 'assets/img/dewasa/09-sujud-2.jpg','assets/video/dewasa/09-sujud-2.mp4'),

(1,'Berdiri ke Rakaat Berikutnya',10,
 'Bangkit dari sujud kedua untuk menuju rakaat berikutnya. Berdiri tegak menghadap kiblat.',
 'assets/img/dewasa/10-berdiri-rakaat.jpg','assets/video/dewasa/10-berdiri-rakaat.mp4'),

(1,'Duduk Tasyahud Awal (Iftirasy)',11,
 'Pada Tasyahud Awal, duduklah secara Iftirasy (duduk di atas kaki kiri, kaki kanan ditegakkan). Isyarat telunjuk kanan dimulai sejak awal duduk tasyahud (bukan menunggu lafadz Illallah). Telunjuk diarahkan ke kiblat dan tidak digerak-gerakkan. Pandangan mata tertuju pada telunjuk.',
 'assets/img/dewasa/11-tasyahud-awal.jpg','assets/video/dewasa/11-tasyahud-awal.mp4'),

(1,'Duduk Tasyahud Akhir (Tawarruk)',12,
 'Pada Tasyahud Akhir, duduklah secara Tawarruk (pantat menempel lantai, kaki kiri dimasukkan ke bawah kaki kanan). Setelah tasyahud, lanjutkan dengan Shalawat Nabi dan doa perlindungan dari empat perkara sebelum salam.',
 'assets/img/dewasa/12-tasyahud-akhir.jpg','assets/video/dewasa/12-tasyahud-akhir.mp4'),

(1,'Salam',13,
 'Salam dilakukan dengan menoleh ke kanan hingga pipi kanan terlihat dari belakang, kemudian menoleh ke kiri hingga pipi kiri terlihat. Bacaan salam lengkap dengan wa barakaatuh pada kedua sisi.',
 'assets/img/dewasa/13-salam.jpg','assets/video/dewasa/13-salam.mp4');

-- =========================================================
-- BACAAN DEWASA
-- id_gerakan 1-13 sesuai urutan INSERT gerakan dewasa di atas
-- =========================================================

-- Gerakan 2: Takbiratul Ihram
INSERT INTO bacaan (id_gerakan, urutan, teks_arab, teks_latin, terjemahan, audio_url, sumber) VALUES
(2,1,
 'اللهُ أَكْبَرُ',
 'Allaahu Akbar',
 'Allah Maha Besar.',
 'assets/audio/dewasa/02-takbir.mp3',
 'HPT Muhammadiyah - Kitab Shalat');

-- Gerakan 3: Doa Iftitah (Allahumma Baid - versi HPT Muhammadiyah, Muttafaq alaih)
INSERT INTO bacaan (id_gerakan, urutan, teks_arab, teks_latin, terjemahan, audio_url, sumber) VALUES
(3,1,
 'اللَّهُمَّ بَاعِدْ بَيْنِي وَبَيْنَ خَطَايَايَ ، كَمَا بَاعَدْتَ بَيْنَ الْمَشْرِقِ وَالْمَغْرِبِ ، اللَّهُمَّ نَقِّنِي مِنَ الْخَطَايَا ، كَمَا يُنَقَّى الثَّوْبُ الْأَبْيَضُ مِنَ الدَّنَسِ ، اللَّهُمَّ اغْسِلْ خَطَايَايَ بِالْمَاءِ وَالثَّلْجِ وَالْبَرَدِ',
 'Allaahumma baa''id bainii wa baina khathaayaaya kamaa baa''adta bainal masyriqi wal maghrib. Allaahumma naqqinii minal khathaayaa kamaa yunaqqats tsaubul abyadhu minad danasi. Allaahummaghsil khathaayaaya bil maa-i wats tsalji wal barad.',
 'Ya Allah, jauhkanlah antara aku dan kesalahan-kesalahanku sebagaimana Engkau menjauhkan antara timur dan barat. Ya Allah, bersihkanlah aku dari kesalahan-kesalahanku sebagaimana baju putih dibersihkan dari kotoran. Ya Allah, cucilah kesalahan-kesalahanku dengan air, salju, dan embun.',
 'assets/audio/dewasa/03-iftitah.mp3',
 'HPT Muhammadiyah - Kitab Shalat (Muttafaq alaih / HR. Bukhari & Muslim)');

-- Gerakan 4: Al-Fatihah
INSERT INTO bacaan (id_gerakan, urutan, teks_arab, teks_latin, terjemahan, audio_url, sumber) VALUES
(4,1,
 'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ۝ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ۝ الرَّحْمَٰنِ الرَّحِيمِ ۝ مَالِكِ يَوْمِ الدِّينِ ۝ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ۝ اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ ۝ صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ',
 'Bismillaahirrahmaanirrahiim. Alhamdu lillaahi rabbil ''aalamiin. Arrahmaanirrahiim. Maaliki yaumid diin. Iyyaaka na''budu wa iyyaaka nasta''iin. Ihdinash shiraathal mustaqiim. Shiraathal ladziina an''amta ''alaihim ghairil maghduubi ''alaihim waladh dhaaalliin.',
 'Dengan nama Allah Yang Maha Pengasih, Maha Penyayang. Segala puji bagi Allah, Tuhan seluruh alam, Yang Maha Pengasih, Maha Penyayang, Pemilik hari pembalasan. Hanya kepada Engkaulah kami menyembah dan hanya kepada Engkaulah kami mohon pertolongan. Tunjukilah kami jalan yang lurus, yaitu jalan orang-orang yang telah Engkau beri nikmat kepadanya; bukan jalan mereka yang dimurkai, dan bukan pula jalan mereka yang sesat.',
 'assets/audio/dewasa/04-alfatihah.mp3',
 'Al-Quran Surat Al-Fatihah 1-7');

-- Gerakan 5: Rukuk
INSERT INTO bacaan (id_gerakan, urutan, teks_arab, teks_latin, terjemahan, audio_url, sumber) VALUES
(5,1,
 'سُبْحَانَكَ اللَّهُمَّ رَبَّنَا وَبِحَمْدِكَ ، اللَّهُمَّ اغْفِرْ لِي',
 'Subhaanakallaahumma rabbanaa wa bihamdika allaahummaghfirlii.',
 'Maha Suci Engkau ya Allah, Tuhan kami, dan dengan memuji-Mu. Ya Allah, ampunilah aku.',
 'assets/audio/dewasa/05-rukuk.mp3',
 'HPT Muhammadiyah - Kitab Shalat');

-- Gerakan 6: I'tidal
INSERT INTO bacaan (id_gerakan, urutan, teks_arab, teks_latin, terjemahan, audio_url, sumber) VALUES
(6,1,
 'سَمِعَ اللهُ لِمَنْ حَمِدَهُ',
 'Sami''allaahu liman hamidah.Rabbanaa wa lakal hamdu hamdan katsiiran thayyiban mubaarakan fiih',
 'Allah mendengar pujian orang yang memuji-Nya.',
 'assets/audio/dewasa/06-itidal-bangkit.mp3',
 'HPT Muhammadiyah - Kitab Shalat'),
(6,2,
 'رَبَّنَا وَلَكَ الْحَمْدُ ، حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ',
 'Rabbanaa wa lakal hamdu hamdan katsiiran thayyiban mubaarakan fiih.',
 'Ya Tuhan kami, bagi-Mu segala puji, pujian yang banyak, baik, dan penuh berkah.',
 'assets/audio/dewasa/06-itidal-doa.mp3',
 'HPT Muhammadiyah - Kitab Shalat');

-- Gerakan 7: Sujud Pertama
INSERT INTO bacaan (id_gerakan, urutan, teks_arab, teks_latin, terjemahan, audio_url, sumber) VALUES
(7,1,
 'سُبْحَانَكَ اللَّهُمَّ رَبَّنَا وَبِحَمْدِكَ ، اللَّهُمَّ اغْفِرْ لِي',
 'Subhaanakallaahumma rabbanaa wa bihamdika allaahummaghfirlii.',
 'Maha Suci Engkau ya Allah, Tuhan kami, dan dengan memuji-Mu. Ya Allah, ampunilah aku.',
 'assets/audio/dewasa/07-sujud.mp3',
 'HPT Muhammadiyah - Kitab Shalat');

-- Gerakan 8: Duduk di Antara Dua Sujud
INSERT INTO bacaan (id_gerakan, urutan, teks_arab, teks_latin, terjemahan, audio_url, sumber) VALUES
(8,1,
 'اللَّهُمَّ اغْفِرْ لِي ، وَارْحَمْنِي ، وَاجْبُرْنِي ، وَاهْدِنِي ، وَارْزُقْنِي',
 'Allaahummaghfirlii warhamnii wajburnii wahdinii warzuqnii.',
 'Ya Allah, ampunilah aku, kasihanilah aku, cukupkanlah kekuranganku, berilah aku petunjuk, dan berilah aku rezeki.',
 'assets/audio/dewasa/08-duduk-antara-sujud.mp3',
 'HPT Muhammadiyah - Kitab Shalat (HR. Ibnu Abbas ra. — tanpa wa afinii sesuai versi Tarjih)');

-- Gerakan 9: Sujud Kedua (bacaan sama dengan sujud pertama)
INSERT INTO bacaan (id_gerakan, urutan, teks_arab, teks_latin, terjemahan, audio_url, sumber) VALUES
(9,1,
 'سُبْحَانَكَ اللَّهُمَّ رَبَّنَا وَبِحَمْدِكَ ، اللَّهُمَّ اغْفِرْ لِي',
 'Subhaanakallaahumma rabbanaa wa bihamdika allaahummaghfirlii.',
 'Maha Suci Engkau ya Allah, Tuhan kami, dan dengan memuji-Mu. Ya Allah, ampunilah aku.',
 'assets/audio/dewasa/09-sujud-2.mp3',
 'HPT Muhammadiyah - Kitab Shalat');

-- Gerakan 11: Tasyahud Awal
INSERT INTO bacaan (id_gerakan, urutan, teks_arab, teks_latin, terjemahan, audio_url, sumber) VALUES
(11,1,
 'التَّحِيَّاتُ لِلَّهِ وَالصَّلَوَاتُ وَالطَّيِّبَاتُ ، السَّلامُ عَلَيْكَ أَيُّهَا النَّبِيُّ وَرَحْمَةُ اللَّهِ وَبَرَكَاتُهُ ، السَّلامُ عَلَيْنَا وَعَلَى عِبَادِ اللَّهِ الصَّالِحِينَ ، أَشْهَدُ أَنْ لا إِلَهَ إِلا اللَّهُ ، وَأَشْهَدُ أَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ',
 'Attahiyyaatu lillaahi wash sholawaatu wath thayyibaat. Assalaamu ''alaika ayyuhan nabiyyu wa rahmatullaahi wa barakaatuh. Assalaamu ''alainaa wa ''alaa ''ibaadillaahish shaalihiin. Asyhadu allaa ilaaha illallaah wa asyhadu anna muhammadan ''abduhu wa rasuuluh.',
 'Segala penghormatan hanya milik Allah, begitu pula segala sholat dan segala yang baik. Semoga keselamatan, rahmat Allah dan keberkahan-Nya terlimpah atasmu wahai Nabi. Semoga keselamatan terlimpah pula atas kami dan atas seluruh hamba Allah yang sholih. Aku bersaksi bahwa tiada Tuhan selain Allah, dan aku bersaksi bahwa Muhammad adalah hamba dan utusan-Nya.',
 'assets/audio/dewasa/11-tasyahud-awal.mp3',
 'HPT Muhammadiyah - Kitab Shalat');

-- Gerakan 12: Tasyahud Akhir + Shalawat
INSERT INTO bacaan (id_gerakan, urutan, teks_arab, teks_latin, terjemahan, audio_url, sumber) VALUES
(12,1,
 'التَّحِيَّاتُ لِلَّهِ وَالصَّلَوَاتُ وَالطَّيِّبَاتُ ، السَّلامُ عَلَيْكَ أَيُّهَا النَّبِيُّ وَرَحْمَةُ اللَّهِ وَبَرَكَاتُهُ ، السَّلامُ عَلَيْنَا وَعَلَى عِبَادِ اللَّهِ الصَّالِحِينَ ، أَشْهَدُ أَنْ لا إِلَهَ إِلا اللَّهُ ، وَأَشْهَدُ أَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ',
 'Attahiyyaatu lillaahi wash sholawaatu wath thayyibaat. Assalaamu ''alaika ayyuhan nabiyyu wa rahmatullaahi wa barakaatuh. Assalaamu ''alainaa wa ''alaa ''ibaadillaahish shaalihiin. Asyhadu allaa ilaaha illallaah wa asyhadu anna muhammadan ''abduhu wa rasuuluh.',
 'Bacaan tasyahud (sama seperti tasyahud awal).',
 'assets/audio/dewasa/12-tasyahud-akhir.mp3',
 'HPT Muhammadiyah - Kitab Shalat'),
(12,2,
 'اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ ، كَمَا صَلَّيْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ ، إِنَّكَ حَمِيدٌ مَجِيدٌ ، اللَّهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ ، كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ ، إِنَّكَ حَمِيدٌ مَجِيدٌ',
 'Allaahumma shalli ''alaa muhammadin wa ''alaa aali muhammad. Kamaa shallaita ''alaa ibraahiima wa ''alaa aali ibraahiim. Innaka hamiidun majiid. Allaahumma baarik ''alaa muhammadin wa ''alaa aali muhammad. Kamaa baarakta ''alaa ibraahiima wa ''alaa aali ibraahiim. Innaka hamiidun majiid.',
 'Ya Allah, berilah shalawat kepada Muhammad dan keluarga Muhammad, sebagaimana Engkau telah memberi shalawat kepada Ibrahim dan keluarga Ibrahim. Sesungguhnya Engkau Maha Terpuji lagi Maha Mulia. Ya Allah, berilah berkah kepada Muhammad dan keluarga Muhammad, sebagaimana Engkau telah memberi berkah kepada Ibrahim dan keluarga Ibrahim. Sesungguhnya Engkau Maha Terpuji lagi Maha Mulia.',
 'assets/audio/dewasa/12-shalawat.mp3',
 'HPT Muhammadiyah - Kitab Shalat');

-- Gerakan 13: Salam
INSERT INTO bacaan (id_gerakan, urutan, teks_arab, teks_latin, terjemahan, audio_url, sumber) VALUES
(13,1,
 'السَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ',
 'Assalaamu ''alaikum wa rahmatullaahi wa barakaatuh.',
 'Semoga keselamatan, rahmat Allah, dan keberkahan-Nya tercurah atas kalian. (Diucapkan dua kali: menoleh ke kanan dan ke kiri)',
 'assets/audio/dewasa/13-salam.mp3',
 'HPT Muhammadiyah - Kitab Shalat');



-- =========================================================
-- KATEGORI ANAK-ANAK (id_kategori = 2) — versi sederhana
-- =========================================================
INSERT INTO gerakan (id_kategori, nama, urutan, deskripsi, gambar_url, video_url) VALUES
(2,'Berdiri Menghadap Kiblat',1,
 'Berdiri tegak sambil niat dalam hati mau sholat. Niat tidak perlu diucapkan, cukup diingat dalam hati ya, adik-adik!',
 'assets/img/anak/01-qiyam.jpg',''),

(2,'Takbiratul Ihram',2,
 'Angkat kedua tangan setinggi bahu sambil bilang Allahu Akbar. Artinya: Allah Maha Besar! Lalu lipat tangan di dada.',
 'assets/img/anak/02-takbiratul-ihram.jpg',''),

(2,'Bersedekap — Doa Iftitah',3,
 'Tangan kanan di atas tangan kiri di dada, lalu baca doa iftitah dengan pelan dan khusyuk.',
 'assets/img/anak/03-bersedekap.jpg',''),

(2,'Membaca Al-Fatihah',4,
 'Baca surat Al-Fatihah dengan pelan dan penuh rasa syukur. Setelah selesai ucapkan Aamiin!',
 'assets/img/anak/04-membaca-surah.jpg',''),

(2,'Rukuk',5,
 'Membungkuk dengan punggung lurus seperti meja. Tangan memegang lutut. Punggung harus rata ya!',
 'assets/img/anak/05-rukuk.jpg',''),

(2,'I\'tidal — Bangun dari Rukuk',6,
 'Berdiri tegak lagi. Setelah berdiri, tangan dilepaskan lurus ke bawah, tidak dilipat lagi.',
 'assets/img/anak/06-itidal.jpg',''),

(2,'Sujud Pertama',7,
 'Sujud dengan 7 anggota badan menyentuh lantai: dahi, hidung, dua tangan, dua lutut, dan ujung jari kaki. Ujung jari kaki menghadap kiblat ya!',
 'assets/img/anak/07-sujud-1.jpg',''),

(2,'Duduk di Antara Dua Sujud',8,
 'Duduk sebentar di antara dua sujud sambil berdoa minta ampun dan rezeki kepada Allah.',
 'assets/img/anak/08-duduk-iftirasy.jpg',''),

(2,'Sujud Kedua',9,
 'Sujud lagi seperti sujud pertama. Tujuh anggota badan menyentuh lantai.',
 'assets/img/anak/09-sujud-2.jpg',''),

(2,'Berdiri ke Rakaat Berikutnya',10,
 'Bangun lagi untuk rakaat selanjutnya. Ayo semangat!',
 'assets/img/anak/10-berdiri-rakaat.jpg',''),

(2,'Duduk Tasyahud Awal',11,
 'Duduk sambil membaca bacaan tasyahud. Jari telunjuk kanan diacungkan ke depan.',
 'assets/img/anak/11-tasyahud-awal.jpg',''),

(2,'Duduk Tasyahud Akhir',12,
 'Duduk di rakaat terakhir. Baca tasyahud dan shalawat untuk Nabi Muhammad ﷺ.',
 'assets/img/anak/12-tasyahud-akhir.jpg',''),

(2,'Salam — Sholat Selesai! 🎉',13,
 'Menoleh ke kanan lalu ke kiri sambil mengucap salam. Sholat sudah selesai, alhamdulillah!',
 'assets/img/anak/13-salam.jpg','');

-- Bacaan mode Anak (id_gerakan 14-26 mengikuti AUTO_INCREMENT setelah 13 gerakan dewasa)
INSERT INTO bacaan (id_gerakan, urutan, teks_arab, teks_latin, terjemahan, audio_url, sumber) VALUES
(15,1,'اللهُ أَكْبَرُ','Allaahu Akbar','Allah Maha Besar.','assets/audio/anak/02-takbir.mp3','HPT Muhammadiyah'),
(16,1,
 'اللَّهُمَّ بَاعِدْ بَيْنِي وَبَيْنَ خَطَايَايَ ...',
 'Allaahumma baa''id bainii wa baina khathaayaaya...',
 'Ya Allah, jauhkan aku dari kesalahan-kesalahanku... (doa iftitah versi pendek untuk anak)',
 'assets/audio/anak/03-iftitah.mp3','HPT Muhammadiyah'),
 (17,1,
 'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ۝ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ۝ الرَّحْمَٰنِ الرَّحِيمِ ۝ مَالِكِ يَوْمِ الدِّينِ ۝ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ۝ اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ ۝ صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ',
 'Bismillaahirrahmaanirrahiim. Alhamdu lillaahi rabbil ''aalamiin. Arrahmaanirrahiim. Maaliki yaumid diin. Iyyaaka na''budu wa iyyaaka nasta''iin. Ihdinash shiraathal mustaqiim. Shiraathal ladziina an''amta ''alaihim ghairil maghduubi ''alaihim waladh dhaaalliin.',
 'Dengan nama Allah Yang Maha Pengasih, Maha Penyayang. Segala puji bagi Allah, Tuhan seluruh alam, Yang Maha Pengasih, Maha Penyayang, Pemilik hari pembalasan. Hanya kepada Engkaulah kami menyembah dan hanya kepada Engkaulah kami mohon pertolongan. Tunjukilah kami jalan yang lurus, yaitu jalan orang-orang yang telah Engkau beri nikmat kepadanya; bukan jalan mereka yang dimurkai, dan bukan pula jalan mereka yang sesat.',
 'assets/audio/dewasa/04-alfatihah.mp3',
 'Al-Quran Surat Al-Fatihah 1-7'),
(18,1,
 'سُبْحَانَكَ اللَّهُمَّ رَبَّنَا وَبِحَمْدِكَ ، اللَّهُمَّ اغْفِرْ لِي',
 'Subhaanakallaahumma rabbanaa wa bihamdika allaahummaghfirlii.',
 'Maha Suci Allah Tuhanku, dan dengan memuji-Mu. Ya Allah, ampunilah aku.',
 'assets/audio/anak/05-rukuk.mp3','HPT Muhammadiyah'),
 (19,1,
 'سَمِعَ اللهُ لِمَنْ حَمِدَهُ, رَبَّنَا وَلَكَ الْحَمْدُ ، حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ',
 'Sami allaahu liman hamidah, Rabbanaa wa lakal hamdu hamdan katsiiran thayyiban mubaarakan fiih.',
 'Maha Suci Allah Tuhanku, dan dengan memuji-Mu. Ya Allah, ampunilah aku.',
 'assets/audio/anak/05-rukuk.mp3','HPT Muhammadiyah'),
(20,1,
 'سُبْحَانَكَ اللَّهُمَّ رَبَّنَا وَبِحَمْدِكَ ، اللَّهُمَّ اغْفِرْ لِي',
 'Subhaanakallaahumma rabbanaa wa bihamdika allaahummaghfirlii.',
 'Maha Suci Allah Tuhanku, dan dengan memuji-Mu. Ya Allah, ampunilah aku.',
 'assets/audio/anak/07-sujud.mp3','HPT Muhammadiyah'),
(21,1,
 'اللَّهُمَّ اغْفِرْ لِي ، وَارْحَمْنِي ، وَاجْبُرْنِي ، وَاهْدِنِي ، وَارْزُقْنِي',
 'Allaahummaghfirlii warhamnii wajburnii wahdinii warzuqnii.',
 'Ya Allah ampunilah aku, sayangilah aku, cukupkanlah aku, berilah aku petunjuk, dan rezeki.',
 'assets/audio/anak/08-duduk-antara-sujud.mp3','HPT Muhammadiyah'),
(22,1,
 'سُبْحَانَكَ اللَّهُمَّ رَبَّنَا وَبِحَمْدِكَ ، اللَّهُمَّ اغْفِرْ لِي',
 'Subhaanakallaahumma rabbanaa wa bihamdika allaahummaghfirlii.',
 'Maha Suci Allah Tuhanku, dan dengan memuji-Mu. Ya Allah, ampunilah aku.',
 'assets/audio/anak/09-sujud-2.mp3','HPT Muhammadiyah'),
(24,1,
 'التَّحِيَّاتُ لِلَّهِ وَالصَّلَوَاتُ وَالطَّيِّبَاتُ ...',
 'Attahiyyaatu lillaahi wash sholawaatu wath thayyibaat...',
 'Segala penghormatan hanya milik Allah... (bacaan tasyahud)',
 'assets/audio/anak/11-tasyahud.mp3','HPT Muhammadiyah'),
 (25,1,
'اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ ، كَمَا صَلَّيْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ ، إِنَّكَ حَمِيدٌ مَجِيدٌ ، اللَّهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ ، كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ ، إِنَّكَ حَمِيدٌ مَجِيدٌ',
'Allaahumma shalli alaa muhammadin wa alaa aali muhammad. Kamaa shallaita alaa ibraahiima wa alaa aali ibraahiim. Innaka hamiidun majiid. Allaahumma baarik alaa muhammadin wa alaa aali muhammad. Kamaa baarakta alaa ibraahiima wa alaa aali ibraahiim. Innaka hamiidun majiid.',
'Ya Allah, limpahkanlah shalawat kepada Nabi Muhammad dan keluarga Nabi Muhammad sebagaimana Engkau telah melimpahkan shalawat kepada Nabi Ibrahim dan keluarga Nabi Ibrahim. Sesungguhnya Engkau Maha Terpuji lagi Maha Mulia. Ya Allah, limpahkanlah keberkahan kepada Nabi Muhammad dan keluarga Nabi Muhammad sebagaimana Engkau telah melimpahkan keberkahan kepada Nabi Ibrahim dan keluarga Nabi Ibrahim. Sesungguhnya Engkau Maha Terpuji lagi Maha Mulia.',
'assets/audio/anak/12-shalawat.mp3',
'HPT Muhammadiyah'),
(26,1,
 'السَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ',
 'Assalaamu ''alaikum wa rahmatullaahi wa barakaatuh.',
 'Semoga keselamatan, rahmat Allah, dan keberkahan-Nya untuk kalian.',
 'assets/audio/anak/13-salam.mp3','HPT Muhammadiyah');
 
 
