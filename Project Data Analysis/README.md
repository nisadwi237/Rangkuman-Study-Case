## Problem Statement
# 1. Top Spender User
# 2. Total Penjualan per Cluster per Tahun
# 3. Top 3 Penjualan Paket Tertinggi per packageType

## Ringkasan Data
# 1. Dataset transaksi layanan konseling & meditasi berisi 3 tabel diantaranya Payments, Packages, dan Clusters.
# 2. Tabel Payments mencakup 7 kolom diantaranya kolom id, userId, packageId, paymentType, grandTotal, status, dan createdAt.
# 3. Tabel Packages mencakup 7 kolom diantaranya kolom id, name, packageType, totalSession, psychologType, clusterId, dan category.
# 4. Tabel Clusters mencakup 6 tabel diantaranya kolom id, name, duration, type, tier, dan counselingType.

## Exploratory Data Analysis (EDA)
# 1. Membuat query dengan menampilkan userid dengan total pengeluaran (spend) tertinggi, dihitung dari seluruh periode waktu yang tersedia. Hanya hitung transaksi dengan status success.
# 2. Membuat query untuk menampilkan total penjualan per cluster pada tiap tahun. Urutkan hasil berdasarkan tahun (ascending), lalu berdasarkan total penjualan tertinggi (descending) dalam tahun tersebut. Hanya hitung transaksi dengan status success.
# 3. Membuat query untuk menampilkan 3 paket dengan total penjualan tertinggi pada masing-masing packageType, dihitung dari seluruh periode waktu yang tersedia. Hanya hitung dengan status success.

## Turn Into Insight

