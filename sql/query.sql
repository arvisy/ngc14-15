CREATE DATABASE voting;

CREATE TABLE kandidat (
    kandidatId INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(255) NOT NULL,
    partai VARCHAR(255) NOT NULL,
    lokasi VARCHAR(255) NOT NULL,
    grade_current DECIMAL(5, 2) NOT NULL
);

CREATE TABLE pemilih (
    pemilihId INT AUTO_INCREMENT PRIMARY KEY,
    nama_depan VARCHAR(255) NOT NULL,
    nama_belakang VARCHAR(255) NOT NULL,
    jenis_kelamin VARCHAR(20) NOT NULL,
    umur INT NOT NULL
);

CREATE TABLE pilihan (
    pilihanId INT AUTO_INCREMENT PRIMARY KEY,
    kandidatId INT NOT NULL,
    pemilihId INT NOT NULL,
    FOREIGN KEY (kandidatID) REFERENCES kandidat(kandidatID),
    FOREIGN KEY (pemilihID) REFERENCES pemilih(pemilihID)
);