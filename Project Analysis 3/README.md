## 1. Background
Perusahaan mewakili sebuah platform layanan konseling B2B mengumpulkan data pendaftaran konseling dari klien-klien korporat melalui form registrasi online. Karena form ini telah beberapa kali direvisi dari waktu ke waktu (pertanyaan berubah, urutan berubah, bahkan ada versi Bahasa Indonesia dan Inggris), hasil ekspornya berbentuk data "lebar" (wide format) dengan pasangan kolom Question 1/Response 1, Question 2/Response 2, dan seterusnya, di mana isi pertanyaan di setiap baris bisa berbeda-beda.

Tim Data & Analytics ingin data ini diubah menjadi tabel yang rapi, konsisten, dan siap dipakai untuk analisis maupun dashboard reporting bulanan ke stakeholder.

## 2. Dataset
File : Raw Data (1) (1).csv

1. Berisi 7.270 baris data respons pendaftaran konseling.
2. Terdiri dari 24 kolom: Invitee Name, Start/End Date & Time, Event Created Date & Time, serta 10 pasang kolom Question N / Response N.

## 3. Langkah langkah Cleaning dan Transformasi Data :

1. Eksplorasi data — identifikasi semua variasi label pertanyaan unik yang muncul di kolom Question 1–10
2. Buat kamus pemetaan (mapping) dari variasi label pertanyaan tersebut ke nama kolom standar (misal semua variasi "Kode/Nama Perusahaan" ke kolom Perusahaan).
4. Transformasikan data dari format lebar (wide) ke format rapi (tidy), satu baris tetap mewakili satu pendaftaran.
5. Lakukan pembersihan data tambahan seperti: me-standarisasi kapitalisasi, format tanggal, format usia (angka vs "25 tahun"), penanganan nilai kosong, dan menyeragamkan nama label untuk kolom yang sejenis.

## 4. Tools yang digunakan
Alat yang digunakan dalam melakukan cleaning dan transformasi data yaitu MIcrosoft Exel-formula Power Query dan dilanjutkan visualisasi data menggunakan Power BI.
<img width="974" height="590" alt="image" src="https://github.com/user-attachments/assets/7b3f2915-9f5d-45a2-b996-87d438643828" />

## 5. Visualisasi Data

Berikut tampilan dashboard dari hasil data yang sudah dilakukan cleaning.
![Dashboard](https://github.com/nisadwi237/Rangkuman-Study-Case/blob/main/Project%20Analysis%203/Dashboard%20Data%20Konseling.pdf)
