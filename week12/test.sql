 create trigger trg_Personel_Ekle
On Personel
AFTER INSERT 
AS BEGIN SET NOCOUNT ON;
SELECT 'YENİ personel bilgisi eklendi.';
SET NOCOUNT OFF;
END

insert into Personel values (1,'wqe','as',4,4,4,4)

create table Log
(Log_ID int primary key identity(1,1),
log_tarih date,
log_type char(1),
Log_table_name nvarchar(50),
İslem nvarchar(max))

insert into Log values (GETDATE(),'C','dbo.Adres','Sil')

select GETDATE()

