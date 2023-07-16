# AKBANK COBOL PROJECT - PATIKA.DEV



<p><a href="https://docs.microsoft.com/en-us/dotnet/csharp/" rel="nofollow"><img width="200" src="https://github.com/Enesayyildiz1/COBOL-FINAL-CASE/assets/66443194/abed0aa2-5efa-4ff1-a76e-7c1f00d91618" alt="C-Sharp" data-canonical-src="https://img.shields.io/badge/C%23-239120?style=for-the-badge&amp;logo=c-sharp&amp;logoColor=white" style="max-width:10%;"></a>

<p><a href="https://docs.microsoft.com/en-us/dotnet/csharp/" rel="nofollow"><img width="200" src="https://github.com/Enesayyildiz1/COBOL-FINAL-CASE/assets/66443194/59412e6d-a2ab-42ba-a152-1a1708b463aa" alt="C-Sharp" data-canonical-src="https://img.shields.io/badge/C%23-239120?style=for-the-badge&amp;logo=c-sharp&amp;logoColor=white" style="max-width:10%;"></a>



# Projenin Amacı
* ### Proje bir VSAM dosyasında ki verileri READ, UPDATE, DELETE ve ADD fonksiyonları uygular.
## ADD Fonksiyonu
### Sabit bir değişkeni VSAM dosyasına ekler.
<img width="500" alt="Screenshot 2023-07-16 at 17 01 38" src="https://github.com/Enesayyildiz1/COBOL-FINAL-CASE/assets/66443194/0bb50e58-3f74-4605-8e73-496596321120">

## UPDATE Fonksiyonu
### Bu fonksiyon kullanıcının isim verisinde eğer boşluk varsa boşlukları temizler ve soyisimdeki E harflerini I ve A harflerini E yapar ve VSAM dosyasını günceller.
<img width="475" alt="Screenshot 2023-07-16 at 17 09 05" src="https://github.com/Enesayyildiz1/COBOL-FINAL-CASE/assets/66443194/16c39dd4-fc8b-4df0-aee0-0faddc13f68e">

## DELETE Fonksiyonu
### Bu fonksiyon input dosyasında verilen id ye göre VSAM dosyasındaki veriyi siler.
<img width="512" alt="Screenshot 2023-07-16 at 17 08 05" src="https://github.com/Enesayyildiz1/COBOL-FINAL-CASE/assets/66443194/eed8bb2c-b759-440a-acf8-9d7cd9065013">

## READ Fonksiyonu
### Bu fonksiyon input dosyasında verilen id ye göre VSAM dosyasındaki veriyi okur.
<img width="550" alt="Screenshot 2023-07-16 at 17 08 23" src="https://github.com/Enesayyildiz1/COBOL-FINAL-CASE/assets/66443194/41521102-daa7-4224-a1e8-40bca177e9fd">
  
### INPUT DOSYASI

| Yapılmak istenen işlem  | ID | Döviz miktarı | Yapılacak İşlem |
| ------------- | ------------- | ------------- | ------------- |
| 1  | 10001  | 100  |  READ |
| 2  | 10002  | 200  |  UPDATE |
| 3  | 10003  | 300  |  ADD |
| 4  | 10003  | 400  |  DELETE|

