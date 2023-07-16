# AKBANK COBOL PROJECT - PATIKA.DEV



<p><a href="https://docs.microsoft.com/en-us/dotnet/csharp/" rel="nofollow"><img width="200" src="https://github.com/Enesayyildiz1/COBOL-FINAL-CASE/assets/66443194/abed0aa2-5efa-4ff1-a76e-7c1f00d91618" alt="C-Sharp" data-canonical-src="https://img.shields.io/badge/C%23-239120?style=for-the-badge&amp;logo=c-sharp&amp;logoColor=white" style="max-width:10%;"></a>

<p><a href="https://docs.microsoft.com/en-us/dotnet/csharp/" rel="nofollow"><img width="200" src="https://github.com/Enesayyildiz1/COBOL-FINAL-CASE/assets/66443194/59412e6d-a2ab-42ba-a152-1a1708b463aa" alt="C-Sharp" data-canonical-src="https://img.shields.io/badge/C%23-239120?style=for-the-badge&amp;logo=c-sharp&amp;logoColor=white" style="max-width:10%;"></a>



# Projenin Amacı
* ### Proje bir VSAM dosyasında ki verileri READ, UPDATE, DELETE ve ADD fonksiyonları uygular.
## ADD Fonksiyonu
### Sabit bir değişkeni VSAM dosyasına ekler.
<img width="500" alt="Screenshot 2023-07-16 at 17 01 38" src="https://github.com/Enesayyildiz1/COBOL-FINAL-CASE/assets/66443194/0bb50e58-3f74-4605-8e73-496596321120">

## UPDATE Fonksiyonu
### Bu fonksiyonda kullanıcının isim verisinde eğer boşluk varsa boşlukları temizler ve soyisimdeki E harflerini I ve A harflerini E yapar ve VSAM dosyasını günceller.
<img width="475" alt="Screenshot 2023-07-16 at 17 09 05" src="https://github.com/Enesayyildiz1/COBOL-FINAL-CASE/assets/66443194/16c39dd4-fc8b-4df0-aee0-0faddc13f68e">

## DELETE Fonksiyonu
### Bu fonksiyonda input dosyasında verilen id ye göre VSAM dosyasındaki veriyi siler.
<img width="512" alt="Screenshot 2023-07-16 at 17 08 05" src="https://github.com/Enesayyildiz1/COBOL-FINAL-CASE/assets/66443194/eed8bb2c-b759-440a-acf8-9d7cd9065013">

## READ Fonksiyonu
### Bu fonksiyonda input dosyasında verilen id ye göre VSAM dosyasındaki veriyi okur.
<img width="550" alt="Screenshot 2023-07-16 at 17 08 23" src="https://github.com/Enesayyildiz1/COBOL-FINAL-CASE/assets/66443194/41521102-daa7-4224-a1e8-40bca177e9fd">
  
### Cars

| Name  | Data Type | Allow Nulls | Default |
| ------------- | ------------- | ------------- | ------------- |
| CarId  | Int  | False  |   |
| BrandId  | int  | False  |   |
| ColorId  | int  | False  |   |
| ModelYear  | int  | False  |   |
| DailyPrice  | int  | False  |   |
| Description  | nvarchar(MAX)  | False  |   |
| MinFindeksScore  | smallint  | True  | ((0))  |

### Brands

| Name  | Data Type | Allow Nulls | Default |
| ------------- | ------------- | ------------- | ------------- |
| BrandId  | int  | False  |   |
| BrandName  | nvarchar(MAX)  | False  |   |

### Colors

| Name  | Data Type | Allow Nulls | Default |
| ------------- | ------------- | ------------- | ------------- |
| ColorId  | int  | False  |   |
| ColorName  | nvarchar(MAX)  | False  |   |

### Car Images

| Name  | Data Type | Allow Nulls | Default |
| ------------- | ------------- | ------------- | ------------- |
| CarImageId  | int  | False  |   |
| CarId  | int  | False  |   |
| ImagePath  | nvarchar(MAX)  | False  |   |
| Date  | datetime  | False  |   |

### Credit Cards

| Name  | Data Type | Allow Nulls | Default |
| ------------- | ------------- | ------------- | ------------- |
| CreditsCardsId  | int  | False  |   |
| CustomerId  | int  | False  |   |
| NameSurname  | nvarchar(100)  | False  |   |
| CardNumber  | nvarchar(25)  | False  |   |
| ExpMonth  | tinyint  | False  |   |
| ExpYear  | tinyint  | False  |   |
| Cvc  | nvarchar(3)  | False  |   |
| CardType  | nvarchar(20)  | False  |   |

### Customers

| Name  | Data Type | Allow Nulls | Default |
| ------------- | ------------- | ------------- | ------------- |
| CustomerId  | int  | False  |   |
| UserId  | int  | False  |   |
| CompanyName  | nvarchar(MAX)  | False  |   |

### Findeks

| Name  | Data Type | Allow Nulls | Default |
| ------------- | ------------- | ------------- | ------------- |
| FindeksId  | int  | False  |   |
| CustomerId  | int  | False  |   |
| [NationalIdentity]  | nvarchar(50)  | False  |   |
| Score  | smallint  | False  |   |

### Operation Claims

| Name  | Data Type | Allow Nulls | Default |
| ------------- | ------------- | ------------- | ------------- |
| OperationClaimId  | int  | False  |   |
| Name  | nvarchar(MAX)  | False  |   |

### User Operation Claims

| Name  | Data Type | Allow Nulls | Default |
| ------------- | ------------- | ------------- | ------------- |
| UserOperationClaimId  | int  | False  |   |
| UserId  | int  | False  |   |
| OperationClaimId  | int  | False  |   |
  
### Users

| Name  | Data Type | Allow Nulls | Default |
| ------------- | ------------- | ------------- | ------------- |
| UserId  | int  | False  |   |
| FirstName  | nvarchar(MAX)  | False  |   |
| LastName  | nvarchar(MAX)  | False  |   |
| Email  | nvarchar(MAX)  | False  |   |
| PasswordSalt  | varbinary(MAX)  | False  |   |
| PasswordHash  | varbinary(MAX)  | False  |   |
| Status  | bit  | False  |   |

### Payments

| Name  | Data Type | Allow Nulls | Default |
| ------------- | ------------- | ------------- | ------------- |
| PaymentId  | int  | False  |   |
| Amount  | money  | False  |   |

### Rentals

| Name  | Data Type | Allow Nulls | Default |
| ------------- | ------------- | ------------- | ------------- |
| RentalId  | int  | False  |   |
| CarId  | int  | False  |   |
| CustomerId  | int  | False  |   |
| RentDate  | date  | False  |   |
| RentDate  | date  | True  |   |


</details>

```bash
# Repository klonlayın
$ git clone https://github.com/Enesayyildiz1/ReCapCarProject.git
# Klonladığınız klasöre gidin
$ cd ReCapCarProject.git

# Bağımlılıkları yükleyin
$ dotnet restore
```
