-- 1. Top Spender User
-- Mengidentifikasi 10 user dengan total pembayaran sukses terbesar.
SELECT
    p."userId",
    SUM(p."grandTotal") AS totalSuccessPayments 
FROM "Payments".payments p
WHERE p.status = 'success'
GROUP by
	p."userId"
ORDER BY
    totalSuccessPayments desc
limit 10;

-- 2. Total Penjualan per Cluster per Tahun
-- Mengidentifikasi total penjualan masing masing cluster setiap tahun
SELECT
    EXTRACT(YEAR FROM p."createdAt"::TIMESTAMPTZ) AS year,
    c.name AS cluster,
    SUM(p."grandTotal") AS totalSuccessPayments 
FROM "Payments".payments p
JOIN "Packages".packages pk
    ON p."packageId" = pk.id
JOIN "Clusters".clusters c
    ON pk."clusterId" = c.id
WHERE p.status = 'success'
GROUP BY
    EXTRACT(YEAR FROM p."createdAt"::TIMESTAMPTZ),
    c.name
ORDER BY
    year ASC,
    totalSuccessPayments  DESC;

--3.Top 3 Paket Penjualan Tertinggi per PackageType
-- Mengidentifikasi 3 teratas paket penjualan tertinggi berdasarkan total pembayaran sukses terbesar
WITH package_sales AS (
    SELECT
        pk."packageType",
        pk.name AS packages,
        SUM(p."grandTotal") AS totalSuccessPayments
    FROM "Payments".payments p
    LEFT JOIN "Packages".packages pk
        ON p."packageId" = pk.id
    WHERE p.status = 'success'
    GROUP BY
        pk."packageType",
        pk.name
),
ranked AS (
    SELECT
        "packageType",
        packages,
        totalSuccessPayments,
        ROW_NUMBER() OVER (
            PARTITION BY "packageType"
            ORDER BY totalSuccessPayments DESC
        ) AS rn,
        MAX(totalSuccessPayments) OVER (
            PARTITION BY "packageType"
        ) AS max_packageType_sales
    FROM package_sales
)
SELECT
    "packageType",
    packages,
    totalSuccessPayments,
    rn
FROM ranked
WHERE rn <= 3
ORDER BY
    max_packageType_sales DESC,
    rn;
