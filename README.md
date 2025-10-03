# Jarkom-Modul-1-2025-K-27

| Nama | NRP | 
|----------|----------|
| Naila Raniyah Hanan | 5027231078 |
| Naufan Andi | 50272310 |

## write up 

14. Setelah gagal mengakses FTP, Melkor melancarkan serangan brute force terhadap  Manwe. Analisis file capture yang disediakan dan identifikasi upaya brute force Melkor. 
(link file) nc 10.15.43.32 3401

- membuka wireshark yang berada di soal dan menjalankan nc 10.15.43.32 3401
  lalu muncul soal
  
- How many packets are recorded in the pcapng file?
   berapa banyak packet
  > 500358
  
- what are the user that successfully logged in ?
  format : user:pass
  
agar bisa mendapatkan user dan password kita menemukan salah satu packet dengan menggunakan filter http dan mencari yang berhasil login muncullah

 > n1enna&password=y4v4nn4_k3m3nt4r1

- In which stream were the credentials found ?
  dan muncul jika sudah menemukan di filternya menunjukan nomer stremnya
  41824
- what tools are used for brute force ?
  format : Hydra v1.8.0-dev
  > Fuzz Faster U Fool v2.1.0-dev
  setelah menyelesaikan tahap pertanyaanya baru munculah flagnya

15. Melkor menyusup ke ruang server dan memasang keyboard USB berbahaya pada node Manwe. Buka file capture dan identifikasi pesan atau ketikan (keystrokes) yang berhasil dicuri oleh Melkor untuk menemukan password rahasia.
(link file) nc 10.15.43.32 3402

- What device does Melkor use?
Format: string

usb itu bisa aja kybord dll bagaiamana cara identivikasinya jadi sama kayak protocol lainya buat tahu divaice nya itu apa ga di salah satu paket cari yang ada hid data.

 > Keyboard

- What did Melkor write?
Format: string

 gimana kita baca paket wireshark menggunakan pyhton, lalu kita membuat 3 file dalam 1 folder ya itu ada file hidden.py  hiddenmsg.pcapng  pyhton.py


 > UGx6X3ByMHYxZGVfeTB1cl91czNybjRtZV80bmRfcDRzc3cwcmQ=

- What is Melkor's secret message?
Format: string

teks base 64 di ubah ke teks

  > Plz_pr0v1de_y0ur_us3rn4me_4nd_p4ssw0rd
  
16.Melkor semakin murka ia meletakkan file berbahaya di server milik Manwe. Dari file capture yang ada, identifikasi file apa yang diletakkan oleh Melkor.
	(link file) nc 10.15.43.32 3403. 
  
- what credential did the attacker use to log in?
  format: user:pass
  
mencari mneggunakan filter ftp karena user login kordensial dengan (user:password) dan jika udah nemu ubah ke ASCII.

> ind@psg420.com:{6r_6e#tFT1p

- How many files are suspected of contaiing malwer?
  > 5
  
di dalam file tersebut ada beberapa malwer yang menggunakan file .exe yaitu berjumlah 5

- What is the hash of the first file (q.exe)?
Format: sha256

mencari manual yang infonya bertulisan q.exe dan protocolnya itu ftp-data mencari satu" dapat lalu kita follow dan huruf asci kita rubah ke raw ( karena q.exe binary file akan mengubah byte non-huruf), lalu kita simpen si filenya dan lalu kita sha256sum file yg kita simpan 

> ca34b0926cdc3242bbfad1c4a0b42cc2750d90db9a272d92cfb6cb7034d2a3bd

- What is the hash of the second file (w.exe)?
Format: sha256


mencari manual yang infonya bertulisan w.exe dan protocolnya itu ftp-data mencari satu" dapat lalu kita follow dan huruf asci kita rubah ke raw ( karena q.exe binary file akan mengubah byte non-huruf), lalu kita simpen si filenya dan lalu kita sha256sum file yg kita simpan 

> 08eb941447078ef2c6ad8d91bb2f52256c09657ecd3d5344023edccf7291e9fc

- What is the hash of the third file (e.exe)?
Format: sha256


mencari manual yang infonya bertulisan w.exe dan protocolnya itu ftp-data mencari satu" dapat lalu kita follow dan huruf asci kita rubah ke raw ( karena q.exe binary file akan mengubah byte non-huruf), lalu kita simpen si filenya dan lalu kita sha256sum file yg kita simpan 

> 32e1b3732cd779af1bf7730d0ec8a7a87a084319f6a0870dc7362a15ddbd3199

- What is the hash of the fourth file (r.exe)?
Format: sha256


mencari manual yang infonya bertulisan w.exe dan protocolnya itu ftp-data mencari satu" dapat lalu kita follow dan huruf asci kita rubah ke raw ( karena q.exe binary file akan mengubah byte non-huruf), lalu kita simpen si filenya dan lalu kita sha256sum file yg kita simpan 

> 4ebd58007ee933a0a8348aee2922904a7110b7fb6a316b1c7fb2c6677e613884

- What is the hash of the fifth file (t.exe)?
Format: sha256


mencari manual yang infonya bertulisan w.exe dan protocolnya itu ftp-data mencari satu" dapat lalu kita follow dan huruf asci kita rubah ke raw ( karena q.exe binary file akan mengubah byte non-huruf), lalu kita simpen si filenya dan lalu kita sha256sum file yg kita simpan

> 10ce4b79180a2ddd924fdc95951d968191af2ee3b7dfc96dd6a5714dbeae613a

lalu berhasil mendapatkan flagnya 
Congratulations! Here is your flag: KOMJAR25{Y0u_4r3_4_g00d_4nalyz3r_g1A7Pn9vjXlGbTsjAClZVwg57}

17. Manwe membuat halaman web di node-nya yang menampilkan gambar cincin agung. Melkor yang melihat web tersebut merasa iri sehingga ia meletakkan file berbahaya agar web tersebut dapat dianggap menyebarkan malware oleh Eru. Analisis file capture untuk menggagalkan rencana Melkor dan menyelamatkan web Manwe.
(link file) nc 10.15.43.32 3404

- What is the name of the first suspicious file?
Format: file.exe

Analisis file capture dilakukan dengan fitur Export Objects → HTTP di Wireshark karena fitur ini melakukan reassembly seluruh paket HTTP dan menampilkan objek yang dikirim dari server. Dengan cara ini saya menemukan file berbahaya pertama yang bernama file.exe (atau nama sebenarnya yang muncul di daftar) yang tidak semestinya ada pada web Manwe, jika menemukan exe kita save semua file yang berda di http tadi 

> Invoice&MSO-Request.doc'

Dengan menggunakan File → Export Objects → HTTP pada file capture, saya melihat beberapa file yang dikirim server. File pertama yang tidak semestinya ada (suspicious) adalah Invoice&MSO-Request.doc, sebuah dokumen Word yang berpotensi berisi macro berbahaya. Inilah file pertama yang ditempatkan Melkor untuk menyebarkan malware.

- What is the name of the second suspicious file?
Format: file.exe

> knr.exe

karena file ini aneh dan malicious jika yang ncsi.exe itu file sistem normal windows bukan malwer.

- What is the hash of the second suspicious file (knr.exe)?
Format: sha256

tadi kita udah download semua filenya lalu yang file knr.exe kita sha256sum knr.exe sama seperti soal" sebelumnya 

> 749e161661290e8a2d190b1a66469744127bc25bf46e5d0c6f2e835f4b92db18

Congratulations! Here is your flag: KOMJAR25{M4ster_4n4lyzer_ZyIagLYVPW7g3kBFtBEfhpCjs}

18. Karena rencana Melkor yang terus gagal, ia akhirnya berhenti sejenak untuk berpikir. Pada saat berpikir ia akhirnya memutuskan untuk membuat rencana jahat lainnya dengan meletakkan file berbahaya lagi tetapi dengan metode yang berbeda. Gagalkan lagi rencana Melkor dengan mengidentifikasi file capture yang disediakan agar dunia tetap aman.
(link file) nc 10.15.43.32 3405

- How many files are suspected of containing malware?
Format: int

buka capture perhatikan protokolnya bukan HTTP lagi tapi penuh dengan paket SMB yang memang dipakai Windows untuk berbagi file. Karena itu buka menu “Export Objects → SMB” di Wireshark supaya file-file yang dikirim lewat SMB bisa kelihatan utuh. Dari situ langsung kelihatan beberapa file bawaan Windows dan dua file .exe dengan nama acak yang besar ukurannya. Hanya dua itulah yang benar-benar mencurigakan sebagai malware, sedangkan yang lain seperti .ini, svcctl, atau samr adalah file sistem biasa

> 2

- What is the name of the first malicious file?
Format: file.exe

pertanyaanya adlah first malicious file maka ambil .exe yang muncul 

> d0p2nc6ka3f_fixhohlycj4ovqfcy_smchzo_ub83urjpphrwahjwhv_o5c0fvf6.exe

- Apa nama file berbahaya yang kedua?
Format: file.exe

 file berbahaya kedua yaitu 
 
 > oiku9bu68cxqenfmcsos2aek6t07_guuisgxhllixv8dx2eemqddnhyh46l8n_di.exe

- What is the hash of the first malicious file?
Format: sha256

sama seperti soal" sebelumnya mendapatkan sha

> 59896ae5f3edcb999243c7bfdc0b17eb7fe28f3a66259d797386ea470c010040

- What is the hash of the second malicious file?
Format: sha256

ini juga sama kayak sebelumnya 

> cf99990bee6c378cbf56239b3cc88276eec348d82740f84e9d5c343751f82560

Congratulations! Here is your flag: KOMJAR25{Y0u_4re_g0dl1ke_dgvmo4T1Mb1K6IzUwt6XYrkq5}

19. Manwe mengirimkan email berisi surat cinta kepada Varda melalui koneksi yang tidak terenkripsi. Melihat hal itu Melkor sipaling jahat langsung melancarkan aksinya yaitu meneror Varda dengan email yang disamarkan. Analisis file capture jaringan dan gagalkan lagi rencana busuk Melkor.
(link file) nc 10.15.43.32 3406

- Who sent the threatening message?
Format: string (name)

protokol yang digunakan adalah SMTP biasa tanpa TLS, Karena email dikirim lewat koneksi yang tidak terenkripsi, buka file capture di Wireshark dan memfilter paket SMTP. Dalam protokol SMTP pengirim selalu terlihat di baris MAIL FROM: atau header From:. Dari situ langsung menemukan alamat dan nama pengirim pesan ancaman sehingga bisa mengidentifikasi siapa pengirimnya.

> Your Life

- How much ransom did the attacker demand ($)?
Format: int

Dari analisis paket SMTP (body email), penyerang menuntut tebusan sebesar $1600 — oleh karena itu jawaban (format int) adalah 1600.

- What is the attacker's bitcoin wallet?
Format: string

membuka paket SMTP (bagian DATA) atau mengikuti aliran TCP yang berisi email, menemukan di body pesan baris yang berisi alamat dompet Bitcoin pelaku.

> 1CWHmuF8dHt7HBGx5RKKLgg9QA2GmE3UyL

Congratulations! Here is your flag: KOMJAR25{Y0u_4re_J4rk0m_G0d_ta7dUNNvyi4Z4POrWB1jSr92H}

20. Untuk yang terakhir kalinya, rencana besar Melkor yaitu menanamkan sebuah file berbahaya kemudian menyembunyikannya agar tidak terlihat oleh Eru. Tetapi Manwe yang sudah merasakan adanya niat jahat dari Melkor, ia menyisipkan bantuan untuk mengungkapkan rencana Melkor. Analisis file capture dan identifikasi kegunaan bantuan yang diberikan oleh Manwe untuk menggagalkan rencana jahat Melkor selamanya.
(link file) nc 10.15.43.32 3407

- What encryption method is used?
Format: string

trafik di dalamnya tidak be

> TLS

- What is the name of the malicious file placed by the attacker?
Format: file.exe

memeriksa traffic dengan Wireshark dan menemukan bahwa objek malware dikirim lewat HTTP. Dengan menyesuaikan preferensi protokol (menonaktifkan/ubah pengenalan TLS atau menggunakan Decode As sehingga paket diinterpretasikan sebagai HTTP), lalu memfilter http dan menggunakan File → Export Objects → HTTP, saya dapat mengekstrak file malware tersebut.

> invest_20.dll

-What is the hash of the file containing the malware?
Format: sha256
sama seperti soal" sebelumnya 

> 31cf42b2a7c5c558f44cfc67684cc344c17d4946d3a1e0b2cecb8eb58173cb2f

Congratulations! Here is your flag: KOMJAR25{B3ware_0f_M4lw4re_ZrvKUE6yFWIS9fZmv0aD2QlrY}

