# Project Data Analysis – Transaksi Layanan Konseling & Pelayanan

## Problem Statement
Dataset transaksi layanan konseling dan meditasi terdiri dari tiga tabel utama, yaitu Payments, Packages, dan Clusters, yang menyimpan informasi mengenai transaksi pengguna, jenis paket layanan, serta karakteristik cluster layanan. Namun, data tersebut masih perlu dianalisis lebih lanjut untuk mengetahui pola penjualan dan perilaku pengguna.

Analisis dilakukan untuk menjawab beberapa permasalahan utama, yaitu:

### 1. Siapa pengguna dengan total pengeluaran tertinggi (Top Spender User)?
Hal ini diperlukan untuk mengidentifikasi pengguna yang memberikan kontribusi pendapatan terbesar.
### 2. Bagaimana total penjualan pada setiap cluster dari tahun ke tahun?
Analisis ini bertujuan untuk mengetahui perkembangan penjualan serta cluster yang memiliki kontribusi penjualan paling besar.
### 3. Apa saja tiga paket dengan penjualan tertinggi berdasarkan packageType?
Analisis ini digunakan untuk mengetahui jenis paket yang paling diminati oleh pengguna sehingga dapat menjadi dasar dalam mengevaluasi performa setiap paket.

Tujuan utama analisis adalah memperoleh insight mengenai perilaku pelanggan, performa penjualan, dan popularitas paket layanan konseling serta meditasi sehingga dapat membantu dalam pengambilan keputusan bisnis.

## Gambaran Data
1. Dataset transaksi layanan konseling & meditasi berisi 3 tabel diantaranya Payments, Packages, dan Clusters.
2. Tabel Payments mencakup 7 kolom diantaranya kolom id, userId, packageId, paymentType, grandTotal, status, dan createdAt.
3. Tabel Packages mencakup 7 kolom diantaranya kolom id, name, packageType, totalSession, psychologType, clusterId, dan category.
4. Tabel Clusters mencakup 6 tabel diantaranya kolom id, name, duration, type, tier, dan counselingType.

## Exploratory Data Analysis (EDA)
1. Membuat query dengan menampilkan userid dengan total pengeluaran (spend) tertinggi, dihitung dari seluruh periode waktu yang tersedia. Hanya hitung transaksi dengan status success.
2. Membuat query untuk menampilkan total penjualan per cluster pada tiap tahun. Urutkan hasil berdasarkan tahun (ascending), lalu berdasarkan total penjualan tertinggi (descending) dalam tahun tersebut. Hanya hitung transaksi dengan status success.
3. Membuat query untuk menampilkan 3 paket dengan total penjualan tertinggi pada masing-masing packageType, dihitung dari seluruh periode waktu yang tersedia. Hanya hitung dengan status success.

# Turn Into Insight
Berdasarkan hasil analisis transaksi dengan status **success**, diperoleh beberapa insight utama sebagai berikut:

### 1. Top Spender User

Analisis menunjukkan adanya pengguna dengan total pengeluaran tertinggi dibandingkan pengguna lainnya. Pengguna dengan nilai transaksi terbesar menjadi salah satu kontributor penting terhadap pendapatan layanan.

Insight ini dapat digunakan untuk mengidentifikasi pelanggan dengan nilai transaksi tinggi dan menjadi pertimbangan dalam menyusun strategi **customer retention**, seperti pemberian loyalty program, penawaran khusus, atau rekomendasi paket yang sesuai dengan kebutuhan pelanggan.

### 2. Perkembangan Penjualan Berdasarkan Cluster

Total penjualan pada setiap cluster menunjukkan adanya perbedaan kontribusi terhadap keseluruhan pendapatan. Perbandingan penjualan dari tahun ke tahun dapat digunakan untuk melihat **tren pertumbuhan atau penurunan performa masing-masing cluster**.

Cluster dengan total penjualan tertinggi dapat menjadi fokus utama dalam mempertahankan performa penjualan, sedangkan cluster dengan kontribusi lebih rendah dapat dievaluasi lebih lanjut untuk mengetahui faktor yang memengaruhi rendahnya penjualan.

### 3. Top 3 Paket Berdasarkan `packageType`

Hasil analisis menunjukkan tiga paket dengan total penjualan tertinggi pada masing-masing `packageType`. Paket dengan penjualan tertinggi menunjukkan bahwa paket tersebut memiliki tingkat permintaan yang relatif lebih tinggi dibandingkan paket lainnya.

Informasi ini dapat digunakan sebagai dasar untuk mengevaluasi **popularitas paket**, menentukan strategi promosi, serta mempertimbangkan pengembangan atau penyesuaian paket berdasarkan kebutuhan pengguna.
