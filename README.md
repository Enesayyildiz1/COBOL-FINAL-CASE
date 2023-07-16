# AKBANK COBOL PROJECT - PATIKA.DEV



<p><a href="https://docs.microsoft.com/en-us/dotnet/csharp/" rel="nofollow"><img width="200" src="https://github.com/Enesayyildiz1/COBOL-FINAL-CASE/assets/66443194/abed0aa2-5efa-4ff1-a76e-7c1f00d91618" alt="C-Sharp" data-canonical-src="https://img.shields.io/badge/C%23-239120?style=for-the-badge&amp;logo=c-sharp&amp;logoColor=white" style="max-width:10%;"></a>


# Projenin Amacı
* ### Proje bir VSAM dosyasında ki verileri READ, UPDATE, DELETE ve ADD fonksiyonları uygular.
## ADD Fonksiyonu
<img width="500" alt="Screenshot 2023-07-16 at 17 01 38" src="https://github.com/Enesayyildiz1/COBOL-FINAL-CASE/assets/66443194/0bb50e58-3f74-4605-8e73-496596321120">

# Business Katmanı
Business katmanında iş kodları yer alır.
Bu katmanda abstract(interface) ve concrete(class) klasörleri olmak üzere 2 ana klasörden oluşmaktadır. <br/>
![Business](https://user-images.githubusercontent.com/66443194/143625311-f7116d47-cfcf-45c6-82f7-0d356b708cc0.PNG)

# Business Katmanı Klasörleri
Abstract, Business, Business Aspects, Concrete, Constants, DependencyResolvers, Autofac, ValidationRules Klasörleri
![BusinessLayer](https://user-images.githubusercontent.com/66443194/143625323-21e06956-b0b2-40d0-a443-4d5f8a8b1da5.PNG) <br/>


# Core Katmanı
Bir framework katmanı olan Core Katmanı'nda DataAccess, Entities, Utilities olmak üzere 3 adet klasör bulunmaktadır.DataAccess klasörü DataAccess Katmanı ile ilgili nesneleri, Entities klasörü Entities katmanı ile ilgili nesneleri tutmak için oluşturulmuştur. Core katmanının .Net Core ile hiçbir bağlantısı yoktur.Oluşturulan core katmanında ortak kodlar tutulur. Core katmanı ile, kurumsal bir yapıda, alt yapı ekibi ilgilenir.
![CoreLayer](https://user-images.githubusercontent.com/66443194/143625313-73ced31f-f07d-42c8-995f-121a82178617.PNG) <br/>
![CoreAspect](https://user-images.githubusercontent.com/66443194/143625316-790db374-7bce-4aba-a2b9-700087ffad12.PNG) <br/>
![CoreUtilities](https://user-images.githubusercontent.com/66443194/143625318-ce8e90a4-fb64-4a25-915f-d06836231ca2.PNG) <br/>


# Data Access Katmanı
Veritabanı CRUD işlemleri gerçekleştirmek için oluşturulan Data Access Katmanı'nda Abstract ve Concrete olmak üzere iki adet klasör bulunmaktadır.Abstract klasörü soyut nesneleri, Concrete klasörü ise somut nesneleri tutmak için oluşturulmuştur. <br/>
![DataAccessLayer](https://user-images.githubusercontent.com/66443194/143625319-889044a4-1c60-49b2-b5f9-bc6294a18de3.PNG) <br/>


## Entities Katmanı

Veritabanı nesneleri için oluşturulmuş Entities Katmanı'nda Abstract ve Concrete olmak üzere iki adet klasör bulunmaktadır.Abstract klasörü soyut nesneleri, Concrete klasörü somut nesneleri tutmak için oluşturulmuştur. <br/>
![EntitiesLayer](https://user-images.githubusercontent.com/66443194/143625321-4a9a3b41-7ed3-4c32-8a41-71b0dbcb6f00.PNG)  <br/>

## UIConsole Katmanı
Kodların doğru çalıştığını görmek için kullandığımız katman test katmanı da diyebiliriz. <br/><br/>
![UIConsoleLayer](https://user-images.githubusercontent.com/76704724/115159792-8bc22c00-a09d-11eb-8265-31fdeede771c.PNG) <br/>


## WepAPI Katmanı
Tüm kodların birleşip web sayfasına yansıtıldığı katmandır <br/>
![WebApiLayer](https://user-images.githubusercontent.com/66443194/143625322-1c40ee6d-0c75-442a-a7b1-9f2bc36da472.PNG) <br/>
<details>
  <summary>Models</summary>
  
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
