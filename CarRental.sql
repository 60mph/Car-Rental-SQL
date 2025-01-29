create table Car
(
	VIN varchar(20) primary key Not Null,
	Model varchar(30) Not Null,
	[The year of manufacture] int Not Null,
	[Cost per day] money Not Null,
	[Body Type] varchar(20) not null
)
create table Client
(
    [Passport Number] int Not Null,
	[Passport Series] int Not Null,
	FCs varchar(25)  Not Null,
	[Telephone Number] varchar(20) Not Null,
	[Address] varchar(100) Not Null,
	Discount int check (Discount < 100 and Discount > 0),
	Unique ([Passport Series], [Passport Number]),
	primary key ([Passport Series], [Passport Number])
)
create table Deal
(
	Id int identity primary key Not Null,
	[Date of issue] date Not Null,
	[Return date] date,
	[Sum] int Not Null,
	[Passport Series] int Not Null,
	[Passport Number] int Not Null,
	foreign key ([Passport Series],[Passport Number]) references Client([Passport Series],[Passport Number])
)
create table Deal_Car
(
	VIN varchar(20) Not Null foreign key references Car([VIN]),
	Id int Not Null foreign key references Deal([Id])
	primary key (VIN, Id)
)
insert into Car values 
('WBA3A5G57FN12789', 'BMW 320i', 2017, 250, 'SEDAN'),
('1J4JS324O2452809', 'Lada 2115', 2008, 300, 'SEDAN'),
('1J4JS324O2452452', 'Lada 2114', 2011, 200, 'HATCHBACK'),
('1HGCM82633A123456', 'Honda Accord', 2008, 180, 'SEDAN'),
('JHMCM56557C123457', 'Toyota Camry', 2010, 200, 'SEDAN'),
('5NPEU46F39H123458', 'Hyundai Sonata', 2015, 150, 'SEDAN'),
('1FAFP55S91A123459', 'Ford Taurus', 2012, 190, 'SEDAN'),
('2HGFB2F50EH123460', 'Honda Civic', 2014, 170, 'SEDAN'),
('3VW2K7AJ5EM123461', 'Volkswagen Jetta', 2016, 160, 'SEDAN'),
('KM8J3CA20JU123462', 'Hyundai Tucson', 2022, 220, 'SUV'),
('5YJ3E1EA7JF123463', 'Jeep Grand Cherokee', 2020, 300, 'SUV'),
('WBA3A5G57FN123464', 'BMW 320i', 2017, 250, 'SEDAN'),
('4T1BF1FK7HU123465', 'Toyota Corolla', 2020, 190, 'SEDAN');

insert into Client([Passport Series],[Passport Number],FCs,[Telephone Number],Address,Discount) values 
(1905, 918243, '�����������.�', '89371237587', '���������, ������ 15', 7),
(1927, 164353, '�������.�','88005555555','���������, ������� 141', 5),
(1917, 164357, '�������.�','88005553535','���������, ������� 144', 5),
(1980, 123456, '��������.�', '89161234567', '������, ��������� ��-�, 55', 10),
(2001, 654321, '�������.�', '89261234567', '�����-���������, ������� ��-�, 101', 7),
(1995, 987654, '���������.�', '89031234567', '�����������, ������� ��-�, 2', 5),
(1990, 543216, '��������.�', '89151234567', '������������, ��������� 25', 8),
(1985, 192837, '��������.�', '89251234567', '������, ����������� 33', 6),
(2000, 283746, '���������.�', '89051234567', '������ ��������, �������� 12', 9),
(1999, 374829, '���������.�', '89271234567', '������, ������������� 40', 4),
(2002, 192837, '����������.�', '89181234567', '���������, �������� 60', 5),
(2005, 918273, '���������.�', '89371234567', '���������, ������ 11', 7),
(1998, 374829, '���������.�', '89451234567', '�������, ��������� 33', 6);

insert into Deal ([Date of issue],[Passport Series],[Passport Number],[Return date],[Sum]) values 
('20.11.2024', 2001, 654321, null, 12000),
('05.10.2024', 2001, 654321, '15.10.2024', 12000),
('07.03.2002', 1905, 918243, '17.03.2002', 13000),
('04.03.2002',1980, 123456,'03.05.2002',3999),
('02.02.2002',1917, 164357,'03.03.2002',10000),
('01.01.2021', 1980, 123456, '10.01.2021', 12000),
('05.03.2021', 2001, 654321, '15.03.2021', 9000),
('12.06.2020', 1995, 987654, '22.06.2020', 15000),
('20.07.2019', 1990, 543216, '30.07.2019', 11000),
('15.09.2018', 1985, 192837, '25.09.2018', 13000),
('11.11.2020', 2000, 283746, '21.11.2020', 14000),
('23.12.2017', 1999, 374829, '02.01.2018', 8000),
('05.01.2019', 2002, 192837, '15.01.2019', 9500),
('07.03.2022', 2005, 918273, '17.03.2022', 11000),
('19.04.2020', 1998, 374829, '29.04.2020', 10000),
('05.10.2023', 2001, 654321, '15.10.2023', 12000);

insert into Deal_Car ([VIN],[Id]) values
('5NPEU46F39H123458', 15),
('1J4JS324O2452452', 14),
('1HGCM82633A123456', 13),
('1J4JS324O2452452', 1),
('1HGCM82633A123456', 2),
('JHMCM56557C123457', 3),
('5NPEU46F39H123458', 4),
('1FAFP55S91A123459', 5),
('2HGFB2F50EH123460', 6),
('3VW2K7AJ5EM123461', 7),
('KM8J3CA20JU123462', 8),
('5YJ3E1EA7JF123463', 9),
('WBA3A5G57FN123464', 10),
('4T1BF1FK7HU123465', 11),
('JHMCM56557C123457', 12);



select * from Car
select * from Client
select * from Deal
select * from Deal_Car
-- 1. ������� �� ����� �������.
-- 1.1 ������� ������ �� ������� � ������������� �� ���� ��������� � ������� ������������� ����������
select Model, [Cost per day]
from Car
order by [Cost per day]

select Model, [Cost per day]
from Car
order by [Cost per day] desc

-- 1.2 ������� ������ �� �������� ������ (where)
-- 1.2.1: ������, ���������� ����� 2015 ����
select * from Car
where [The year of manufacture] > 2015;

-- 1.2.2: ������� � ������� ������ 5
select * from Client
where Discount > 5;

-- 1.2.3: ������, ����������� ����� 2021 ����
select * from Deal
where [Date of issue] >= cast('2021-01-01'as date)

-- 1.3 ���������� ������� � � ��� �����������
-- 1.3.1: ����� ���������� ��������
select count(*) as TotalClients from Client;

-- 1.3.2: ������������ ������
select max(Discount) as MaxDiscount from Client;

-- 1.3.3: ����� ����� ������
select sum([Sum]) as TotalRevenue from Deal;

-- ����������� �� �����: ���������� ������ �� ������ ���
select year([Date of issue]) as Year, count(*) as TotalDeals
from Deal
group by year([Date of issue]);

-- 1.4 ���������� ������ � �������������� rollup � cube
-- 1.4.1: ������ � rollup (������ �� ����� � �������)
-- ������� �� ������ ��� � �����
select  coalesce (CAST(year([Date of issue]) as nvarchar), 'Total') as [Year], 
coalesce (CAST(month([Date of issue]) as nvarchar), 'Total for the year') as [Month], 
sum([Sum]) as Revenue
from Deal
group by rollup (year([Date of issue]), month([Date of issue]));

-- 1.4.2: ������ � cube (������ �� ����� � ��������)
-- ������� �� ������ ��� � �� ������� �������
select coalesce (cast ( year([Date of issue]) as nvarchar), 'Total for the client')  as Year, 
coalesce ((cast([Passport Series] as nvarchar) + ' ' + cast([Passport Number] as nvarchar)), 'Total for the year') as Passport, 
sum([Sum]) as Revenue
from Deal
group by cube (year([Date of issue]), (cast([Passport Series] as nvarchar) + ' ' + cast([Passport Number] as nvarchar)));

-- 1.5 ������� �������, � ��������� ������� ��� �������� ������������������ ����
-- ��� ���� ����� Toyota
select Model, VIN
from Car
where Model not like 'Toyota%';

-- 2.1 ������������ ���������� (where) �������� � ������������ ������
-- 2.1.1 ����� ������� ��� ID ������, ���� ������ ���� � ������ �� ������ ������
select D.Id, D.[Date of issue], C.Model
from Deal D, Deal_Car DC, Car C
where D.Id = DC.Id and DC.VIN = C.VIN;

-- 2.1.2: ����������� ���������� � ������� � ��������
select D.Id, D.[Date of issue], CL.FCs
from Deal D, Client CL
where D.[Passport Series] = CL.[Passport Series] 
  and D.[Passport Number] = CL.[Passport Number];

-- 2.2 ���������� ����������
-- 2.2.1 �� �� ����� ����� inner join
select D.Id, D.[Date of issue], C.Model
from Deal D
inner join Deal_Car DC on D.Id = DC.Id
inner join Car C on DC.VIN = C.VIN;

-- 2.2.2 �� �� ����� ����� inner join
select D.Id, D.[Date of issue], CL.FCs
from Deal D
inner join Client CL on D.[Passport Series] = CL.[Passport Series]
   and D.[Passport Number] = CL.[Passport Number];

-- 2.3 ����� ������� ���������� (left join)
-- 2.3.1: ��� ������� � �� ������ (���� ����)
select CL.FCs, D.Id as DealId
from Client CL
left join Deal D on CL.[Passport Series] = D.[Passport Series] 
   and CL.[Passport Number] = D.[Passport Number];

-- 2.3.2: ��� ������ � �� ������� � ������� (���� ����)
select C.Model, DC.Id as DealId
from Car C
left join Deal_Car DC on C.VIN = DC.VIN;

-- 2.4 ������ ������� ���������� (right join)
-- 2.4.1: ��� ������ � ���������� � �������� (���� ���� ������ �� �������� ������)
select D.Id, CL.FCs
from Deal D
right join Client CL on CL.[Passport Series] = D.[Passport Series] 
   and CL.[Passport Number] = D.[Passport Number];

-- 2.4.2: ��� ������ � ��������������� ������ (���� ���� ������ �� ��������� � ������)
select DC.Id as DealId, C.Model
from Deal_Car DC
right join Car C on C.VIN = DC.VIN;

-- 2.5 ���������� ������� � �����������
-- 2.5.1: ���������� ������ �� ������� �������
select [Passport Series], [Passport Number], count(*) as DealCount
from Deal
group by [Passport Series], [Passport Number];

-- 2.5.2: ���������� ������ �� ������� ����
select year([Date of issue]) as Year, count(*) as DealCount
from Deal
group by year([Date of issue]);

-- 2.6 ����������� � ������� ������ ����� (having)
-- 2.6.1: ������� � ����������� ������ 2 � �����
select [Passport Series], [Passport Number], count(*) as DealCount
from Deal
group by [Passport Series], [Passport Number]
having count(*) >= 2;

-- 2.6.2: ����, � ������� ����� ������ ��������� 10000
select year([Date of issue]) as Year, sum([Sum]) as TotalRevenue
from Deal
group by year([Date of issue])
having sum([Sum]) > 10000;

-- 2.7 ��������� �������
-- 2.7.1: �������, ��������� ������ � 2002 ����
select CL.FCs, CL.[Telephone Number]
from Client CL
where exists (
    select Id from Deal D 
    where D.[Passport Series] = CL.[Passport Series] 
    and D.[Passport Number] = CL.[Passport Number]
    and year(D.[Date of issue]) = 2002
);

-- 2.7.2: ������, ������� ����������� � ������� � 2002 ����
select C.Model
from Car C
where exists (
    select 1 from Deal_Car DC
    join Deal D on DC.Id = D.Id
    where DC.VIN = C.VIN
    and year(D.[Date of issue]) = 2002
);

-- 2.7.3: ������, ������� �� ����������� � ������� � 2002 ����
select C.Model
from Car C
where not exists (
    select 1 from Deal_Car DC
    join Deal D on DC.Id = D.Id
    where DC.VIN = C.VIN
    and year(D.[Date of issue]) = 2002
);

-- 3.1 �� ������ ����� �������� �� �. 2 ������� ��� ������������� (VIEW).
-- 3.1.1: ������������� ������ � ��������������� ����� (�������������� � ������)
create view Deal_Car_View as
select D.Id, D.[Date of issue], C.Model
from Deal D
inner join Deal_Car DC on D.Id = DC.Id
inner join Car C on DC.VIN = C.VIN;

select * from Deal_Car_View;

-- 3.1.2: ������������� ���������� � �������� � �� ������� (���� ���� ������ �� �������� ������)
create view Client_Deal_View as
select CL.FCs, CL.[Passport Series], CL.[Passport Number], D.Id as DealId, D.[Date of issue]
from Client CL
left join Deal D on CL.[Passport Series] = D.[Passport Series] 
   and CL.[Passport Number] = D.[Passport Number];

select * from Client_Deal_View;

--3.2:  �������� ������� ������������� ������������� ��������� (���) (2-3) �������
--3.2.1: �������� ������ ��������, ������� ����� ������ � ������ 2 � ����� ���
with F_Clients  as
(select (cast([Passport Series] as nvarchar) + cast([Passport Number] as nvarchar)) as Passport, count(Id) as DealCount
from Deal
group by (cast([Passport Series] as nvarchar) + cast([Passport Number] as nvarchar))
having count(Id) >= 2)
select * from F_Clients

--3.2.2: ������� ���������� � ������������ ���������� ������
with MaxCost as (
    select max([Cost per day]) as MaxRentCost
    from Car
)
select * from Car where Car.[Cost per day] in (select * from MaxCost)

-- 4.1 ������ � ��������� ������������
-- 4.1.1: ��������� ������ ��� ������� ������� �� ����� ������
select D.[Passport Series], D.[Passport Number], D.Id, D.[Sum], row_number() over (partition by D.[Passport Series], D.[Passport Number] order by [Sum] desc) as RowNum
from Deal D;

-- 4.1.2: ���� �������� �� ������ ���������� ������
select CL.FCs, count(D.Id) as TotalDeals, DENSE_rank() over (order by count(D.Id) desc) as ClientRank
from Client CL
left join Deal D on CL.[Passport Series] = D.[Passport Series] 
   and CL.[Passport Number] = D.[Passport Number]
group by CL.FCs;

-- 4.1.3: ����������� ����� ������ ������ ������� � ��������������� �������
select 
    D.Id, 
    D.[Passport Series], 
    D.[Passport Number], 
    D.[Sum], 
    D.[Date of issue],
    row_number() over (partition by D.[Passport Series], D.[Passport Number] order by D.[Date of issue]) as DealNumber
from Deal D
order by D.[Passport Series], D.[Passport Number], DealNumber;

-- 5.1 �������� ������� 3-4 �������� � �������������� UNION / UNION ALL, EXCEPT, INTERSECT
-- 5.1.1: ������, ������� ������������ �� 2010 ���� � ����� 2020 ����, ���������� �� ���� (�����������)
select DC.VIN, C.Model, D.[Date of issue] from Deal D
inner join Deal_Car DC on D.Id = DC.Id
inner join Car C on DC.VIN = C.VIN where year([Date of issue]) < 2010
union
select DC.VIN, C.Model, D.[Date of issue] from Deal D
inner join Deal_Car DC on D.Id = DC.Id
inner join Car C on DC.VIN = C.VIN where year([Date of issue]) > 2020 order by ([Date of issue])

-- 5.1.2: ������, ������� ������������ �� 2010 ���� �� �� �������������� ����� 2020 ���� (����������)
select DC.VIN, C.Model from Deal D
inner join Deal_Car DC on D.Id = DC.Id
inner join Car C on DC.VIN = C.VIN where year([Date of issue]) < 2010
except
select DC.VIN, C.Model from Deal D
inner join Deal_Car DC on D.Id = DC.Id
inner join Car C on DC.VIN = C.VIN where year([Date of issue]) > 2020

-- 5.1.3: ������, ������� ������������ � �� 2010 ���� � ����� 2020 ���� (�����������)
select DC.VIN, C.Model from Deal D
inner join Deal_Car DC on D.Id = DC.Id
inner join Car C on DC.VIN = C.VIN where year([Date of issue]) > 2020
intersect
select DC.VIN, C.Model from Deal D
inner join Deal_Car DC on D.Id = DC.Id
inner join Car C on DC.VIN = C.VIN where year([Date of issue]) < 2010

-- 6: ������������� CASE, PIVOT � UNPIVOT.
-- 6.1: �������� ������� ��������� ������� (��������) ������ � �������������� CASE
-- 6.1.1: ������� ���������� ������, ��� ������ ���� ���������� ��� ��� �� ����������
select 
    year([Date of issue]) as Year,
    sum(case when [Return date] is not null then 1 else 0 end) as Returned,
    sum(case when [Return date] is null then 1 else 0 end) as NotReturned
from Deal
group by year([Date of issue]);
 
-- 6.2: �������� ������� ��������� ������� (��������) ������ � �������������� PIVOT � UNPIVOT
-- 6.2.2: ������� ���������� ������ �� ������ ����� 2002 ���� (�� ��������)
select [Passport Series], [Passport Number], [1] as Jan, [2] as Feb, [3] as Mar, [4] as Apr, 
       [5] as May, [6] as Jun, [7] as Jul, [8] as Aug, [9] as Sep, [10] as Oct, [11] as Nov, [12] as Dec
from (
    select [Passport Series], [Passport Number], month([Date of issue]) as Month
    from Deal
    where year([Date of issue]) = 2002
) as SourceTable
pivot (
    count(Month) 
    for Month in ([1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12])
) as PivotTable;

-- A) ������� �� ������� ��� � ������ �������� ������ (�������� ����)
select [Date of issue], sum([Sum]) as DailyRevenue
from Deal
where [Date of issue] >= datefromparts(year(getdate()) - 1, month(getdate()), 1)
group by [Date of issue]
order by [Date of issue];

-- ��� ��������
select [Date of issue], sum([Sum]) from Deal group by [Date of issue]
order by [Date of issue];

-- B) ������� ���������� ����������� ������ ������
select Model, count(*) as CarCount
from Car
group by Model;

-- C) ������, �� ������� �� ��������� �� ����� ������ � ������ ����
select Model
from Car
where VIN not in (
    select distinct VIN
    from Deal_Car DC
    join Deal D on DC.Id = D.Id
    where year(D.[Date of issue]) = year(getdate())
);

select Model
from Car
where VIN in (
    select distinct VIN
    from Deal_Car DC
    join Deal D on DC.Id = D.Id
    where year(D.[Date of issue]) = year(getdate())
);

-- ��� D (������� �������� �� ��������)
create table Fines (
    FineId int identity primary key,
    [Passport Series] int not null,
    [Passport Number] int not null,
    FineAmount money not null,
    FineDate date not null,
    foreign key ([Passport Series], [Passport Number]) references Client([Passport Series], [Passport Number])
);

insert into Fines ([Passport Series], [Passport Number], FineAmount, FineDate) values
(1980, 123456, 500, '2023-01-15'),
(2001, 654321, 300, '2022-12-01'),
(1999, 374829, 250, '2023-05-10');

-- �������������� ������ ��� ��������
insert into Deal ([Date of issue], [Return date], [Sum], [Passport Series], [Passport Number]) values
('2023-01-05', '2023-01-10', 10000, 1980, 123456),  -- ������ � �������
('2023-02-15', '2023-02-20', 12000, 1980, 123456),
('2023-03-01', '2023-03-07', 15000, 1980, 123456),
('2023-04-15', '2023-04-20', 11000, 2001, 654321),  -- ������ � �������
('2023-05-10', '2023-05-15', 9000, 2001, 654321),
('2023-06-01', '2023-06-05', 14000, 2001, 654321),
('2023-07-01', '2023-07-10', 20000, 2001, 654321),  -- ������ 3 ������
('2023-08-15', '2023-08-20', 13000, 1999, 374829),  -- ������ � �������
('2023-09-01', '2023-09-05', 9000, 1999, 374829),
('2023-10-01', '2023-10-07', 14000, 1999, 374829),
('2023-11-01', '2023-11-05', 8000, 1999, 374829),   -- ������ 3 ������
('2023-03-10', '2023-03-15', 15000, 1990, 543216),  -- ������ ��� �������
('2023-05-20', '2023-05-25', 17000, 1990, 543216),
('2023-07-15', '2023-07-20', 16000, 1990, 543216),
('2023-08-05', '2023-08-10', 15000, 1990, 543216);  -- ������ 3 ������

insert into Deal_Car (VIN, Id) values
('1FAFP55S91A123459', 16),
('2HGFB2F50EH123460', 17),
('3VW2K7AJ5EM123461', 18),
('KM8J3CA20JU123462', 19),
('5YJ3E1EA7JF123463', 20),
('WBA3A5G57FN123464', 21),
('4T1BF1FK7HU123465', 22),
('1J4JS324O2452452', 23),
('1HGCM82633A123456', 24),
('JHMCM56557C123457', 25),
('5NPEU46F39H123458', 26),
('1FAFP55S91A123459', 27),
('1HGCM82633A123456', 28),
('JHMCM56557C123457', 29),
('5NPEU46F39H123458', 30);

-- D) ����� ���������� �������� (3-� � ����� ���) � ���������� ��� ��� ������ ������, �������� ������
select 
    CL.FCs as ClientName, 
    CL.[Passport Series], 
    CL.[Passport Number],
    count(D.Id) as TotalDeals,
    case 
        when count(D.Id) >= 6 then 6
        when count(D.Id) >= 4 then 4
        when count(D.Id) >= 2 then 2
        else 0
    end as Discount
from Client CL
join Deal D on CL.[Passport Series] = D.[Passport Series] 
   and CL.[Passport Number] = D.[Passport Number]
where not exists (
    select 1 from Fines F
    where F.[Passport Series] = CL.[Passport Series] 
      and F.[Passport Number] = CL.[Passport Number]
)
group by CL.FCs, CL.[Passport Series], CL.[Passport Number]
having count(D.Id) >= 3;

-- E) ������� � ���������� ����������� ������ � �� ����� ����� ������
select CL.[Passport Series],CL.[Passport Number], CL.FCs, sum(D.[Sum])as TotalDealSum, count(D.Id) 
from Client CL
join Deal D on CL.[Passport Series] = D.[Passport Series]
   and CL.[Passport Number] = D.[Passport Number]
group by CL.[Passport Series],CL.[Passport Number],CL.FCs
order by count(D.Id) desc;



go
-- �������  4 ��������� �������� ���������:
-- A) ��������� ��� ����������, ����������� ������ ��������� (�� ����������� � 
-- �������) ����������� ���� ������������, ���� ������� �� ������ 5 ���
create procedure GetAvailableSUVs
as
begin
    select VIN, Model, [The year of manufacture], [Cost per day]
    from Car
    where [The year of manufacture] >= year(getdate()) - 5 
      and [Body Type] = 'SUV' 
      and VIN not in (
          select VIN 
          from Deal_Car DC
          join Deal D on DC.Id = D.Id
          where D.[Return date] is null
      );
end;
go

EXEC GetAvailableSUVs

--select * from Car
go
-- B) ���������, �� ����� ���������� ������������� ���������� � ����������� ������ ��������, ������� ����� ��� ��������
create procedure GetClientsByCar
    @VIN varchar(20)
as
begin
    select CL.FCs as ClientName, CL.[Passport Series], CL.[Passport Number], 
           D.[Date of issue], D.[Return date]
    from Client CL
    join Deal D on CL.[Passport Series] = D.[Passport Series] 
       and CL.[Passport Number] = D.[Passport Number]
    join Deal_Car DC on D.Id = DC.Id
    where DC.VIN = @VIN;
end;
go

EXEC GetClientsByCar @VIN = '5NPEU46F39H123458';

go
-- C) ���������, �� ����� ���������� �������� ������, �������� �������� � �� ������� ������������
create procedure GetModelPopularity
    @Model nvarchar(30),
    @PopularityRating int output
as
begin
    with ModelRankings as
    (
        select 
            C.Model,
            DENSE_RANK() over (order by count(*) desc) as PopularityRank
        from Deal_Car DC
        join Car C on DC.VIN = C.VIN
        group by C.Model
    )
    select @PopularityRating = PopularityRank
    from ModelRankings
    where Model = @Model;

    if @PopularityRating IS NULL
        set @PopularityRating = -1;
end;
go

declare @Rating int;

exec GetModelPopularity 
    @Model = 'Toyota Camry',
    @PopularityRating = @Rating output;

print 'Rating of Toyota Camry is: ' + cast(@Rating as nvarchar(4));

-- D)���������, ���������� ��������� ���������, ������� ������� ����� 
-- ������� ������. ������� ��������� ��������� ������, ��������� �� ��� ������� � 
-- ������� �����������, ������ �������� � ������ ���� ������ ��������

-- ��������� ��������� D1: ����� ����� ������� ������
go
create procedure GetMostExpensiveDeal
    @DealId int output
as
begin
    select top 1 @DealId = Id
    from Deal
    order by [Sum] desc;
end;
go

declare @Deal int;
exec GetMostExpensiveDeal @DealId = @Deal output;
print @Deal

go
-- ������� ��������� D2: ������� � ������ ��� ����� ������� ������
create procedure GetMostExpensiveDealDetails
as
begin
    declare @DealId int;
    exec GetMostExpensiveDeal @DealId output;
    select CL.FCs as ClientName, C.Model
    from Deal_Car DC
    join Car C on DC.VIN = C.VIN
    join Deal D on DC.Id = D.Id
    join Client CL on D.[Passport Series] = CL.[Passport Series] 
       and D.[Passport Number] = CL.[Passport Number]
    where D.Id = @DealId;
end;
go

exec GetMostExpensiveDealDetails;



drop procedure GetAvailableSUVs;
drop procedure GetClientsByCar;
drop procedure GetModelPopularity;
drop procedure GetMostExpensiveDeal;
drop procedure GetMostExpensiveDealDetails;






go
-- A) ��������� �������, ������������ ������� ���������� ������ � ����
create function GetAverageDealsPerDay()
returns float
as
begin
    declare @Average float;
    select @Average = cast(count(*) as float) / 
                      cast(datediff(day, min([Date of issue]), max([Date of issue])) + 1 as float)
    from Deal;
    return @Average;
end;
go

print dbo.GetAverageDealsPerDay();

go
-- B) Inline-�������, ������������ ������ �����������, ������� ��������� � 
-- ������ ������ � ������� � ����: ������������� ���� (����., ���.��������������� 
-- �����), ������, ���, ��� �������, ���� ��������
create function GetCarsInRental()
returns table
as
return (
    select 
        C.VIN, 
        C.Model, 
		C.[Body Type],
        C.[Cost per day], 
        CL.FCs as ClientName, 
        D.[Return date]
    from Car C
    join Deal_Car DC on C.VIN = DC.VIN
    join Deal D on DC.Id = D.Id
    join Client CL on D.[Passport Series] = CL.[Passport Series]
       and D.[Passport Number] = CL.[Passport Number]
    where D.[Return date] is null
);
go

select * from dbo.GetCarsInRental();

go
-- C) Multi-statement-�������, �������� ������� ����� �� ������� ��������� ����
create function GetMonthlyRevenue(@Year int)
returns @RevenueByMonth table (
    Month int,
    Revenue money
)
as
begin
    insert into @RevenueByMonth (Month, Revenue)
    select 
        month([Date of issue]) as Month, 
        sum([Sum]) as Revenue
    from Deal
    where year([Date of issue]) = @Year
    group by month([Date of issue]);
    
    return;
end;
go

select * from GetMonthlyRevenue(2023)



drop function GetMonthlyRevenue
drop function GetCarsInRental
drop function GetAverageDealsPerDay

-- a) ������� ������ ���� �� ���������� ������ � ���� ������ �����-���� ��������� 
--���� �� ������� �� ������� ��� � ������ ���������, �� ������ �� �����������, � 
--��������� ������ �������, ������� ��� ������ ����������� ������ ��������, � � 
--����������� �� ����� ������ ��� ������ ��� ������� ����� ������
go
create or alter trigger trg_InsertDeal
on Deal
for insert
as
begin
    declare @PassportSeries int, @PassportNumber int, @DealId int, @Sum money, @DealCount int, @Discount int;
    declare cur cursor for
    select [Passport Series], [Passport Number], Id, [Sum]
    from inserted;
    open cur;
    fetch next from cur into @PassportSeries, @PassportNumber, @DealId, @Sum;
    while @@FETCH_STATUS = 0
    begin
        if exists (
            select 1
            from Fines F
            where F.[Passport Series] = @PassportSeries
              and F.[Passport Number] = @PassportNumber
        )
        begin
			fetch next from cur into @PassportSeries, @PassportNumber, @DealId, @Sum;
            continue
        end
        select @DealCount = count(*)
        from Deal
        where [Passport Series] = @PassportSeries
          and [Passport Number] = @PassportNumber;
        set @Discount = case
            when @DealCount >= 8 then 6
            when @DealCount >= 6 then 4
            when @DealCount >= 4 then 2
            else 0
        end;
        update Deal
        set [Sum] = @Sum * (100 - @Discount) / 100
        where Id = @DealId;

        fetch next from cur into @PassportSeries, @PassportNumber, @DealId, @Sum;
    end;

    close cur;
    deallocate cur;
end;
go
insert into Fines ([Passport Series], [Passport Number], FineAmount, FineDate) 
values (1980, 123456, 500, '2023-01-15');
insert into Deal ([Date of issue], [Return date], [Sum], [Passport Series], [Passport Number]) 
values ('2023-10-25', null, 10000, 1980, 123456),
('2023-10-25', null, 10000, 1990, 543216);

select * from Fines
-- b)  ����������� ������� �� ��������� ��������� ������� ����������� � ��������� 
--������� ���� ������ ������ ��� �����������, ������� � ������ ������ �� ��������� � �������
go
create or alter trigger trg_UpdateCarCost
on Car
for update
as
begin
    declare @VIN varchar(20);
    declare cur cursor for
    select VIN
    from inserted;
    open cur;
    fetch next from cur into @VIN;
    while @@FETCH_STATUS = 0
    begin
        if exists (
            select 1
            from Deal_Car DC
            join Deal D on DC.Id = D.Id
            where DC.VIN = @VIN
              and D.[Return date] is null
        )
        begin   
            close cur;
            deallocate cur;
            raiserror('������ ������ ��������� ������� ��� �����������, ����������� � ������.', 16, 1);
			return
        end
        fetch next from cur into @VIN;
    end;
    close cur;
    deallocate cur;
end;
go
insert into Deal ([Date of issue], [Return date], [Sum], [Passport Series], [Passport Number]) 
values ('2023-10-20', null, 15000, 1905, 918243);

insert into Deal_Car (VIN, Id) 
values ('1HGCM82633A123456', (select max(Id) from Deal));

update Car 
set [Cost per day] = 250 
where VIN = '1HGCM82633A123456';

select * from Deal d join Deal_Car dc on d.Id = dc.Id where vin = '1HGCM82633A123456'; --��������

--c) ���������� ������� �� �������� �������� ���������� � ������� ����� ������ 
--���������� ������ 15 ���, ������� �� ������������ � �������, ������� ������ 
--���������
go
create or alter trigger trg_DeleteCar
on Car
instead of delete
as
begin
    declare @VIN varchar(20), @YearOfManufacture int;
    declare cur cursor for
    select VIN, [The year of manufacture]
    from deleted;
    open cur;
    fetch next from cur into @VIN, @YearOfManufacture;
    while @@FETCH_STATUS = 0
    begin
        if @YearOfManufacture > year(getdate()) - 15
           and @VIN in (select VIN from Deal_Car)
        begin
			print('���� ������������')
			print (@YearOfManufacture)
            close cur;
            deallocate cur;
			rollback;
			raiserror('���������� ����� ������� ������ ���� �� ������ 15 ��� ��� ������� �� ��������� � ������', 16, 1);
            return;
        end
        fetch next from cur into @VIN, @YearOfManufacture;
    end;
	delete from Deal_Car where VIN in (select VIN from deleted);
    delete from Car
    where VIN in (select VIN from deleted);
    close cur;
    deallocate cur;
end;
go
-- ������� ������� ����������, ������� ������ 15 ���
insert into car values('1HGCM82633A123456', 'Honda Accord', 2008, 180, 'SEDAN');

insert into Deal ([Date of issue], [Return date], [Sum], [Passport Series], [Passport Number]) 
values ('2023-10-20', null, 15000, 1905, 918243);
insert into Deal_Car (VIN, Id) 
values ('1HGCM82633A123456', (select max(Id) from Deal));

delete from Car 
where VIN = '1HGCM82633A123456'; --������ 15 ��� � ���� � ������

select * from Car where [The year of manufacture] <= year(getdate()) - 15
           or VIN not in (select VIN from Deal_Car);
select * from Deal_Car where VIN = '1HGCM82633A123456'; --��������

delete from Car 
where VIN = '4T1BF1FK7HU123465' -- ������ 15 ��� � ���� � ������

select * from Car where VIN = '4T1BF1FK7HU123465'; 
select * from Deal_Car where VIN = '4T1BF1FK7HU123465';



--drop table if exists Deal_Car;
--drop table if exists Deal;
--drop table if exists Client;
--drop table if exists Car;
--drop table if exists Fines;

revert;
-- 6 ����
create role FirmManagerRole; 
create role EmployeeRole;    

grant select, insert, update, delete on schema::dbo to FirmManagerRole;
grant execute on [dbo].GetAverageDealsPerDay to FirmManagerRole;

grant select on Client to EmployeeRole;  
grant select on Car to EmployeeRole;        
grant insert, update, delete on Deal to EmployeeRole; 
grant insert, update, delete on Deal_Car to EmployeeRole; 

create login User_Manager with password = 'Password';
create login User1_Employee with password = 'Password';

create user User_Manager for login User_Manager;       
create user User1_Employee for login User1_Employee;     

alter role FirmManagerRole add member User_Manager;    
alter role EmployeeRole add member User1_Employee;      

execute as user = 'User_Manager';
select top 1 * from Client;  
select top 1 * from Deal;    
update Client set [Address] = 'Address' where
[Passport Series] = 1980 and [Passport Number] = 123456;  
delete from Deal_Car where Id = 1;  
insert into Client ([Passport Series], [Passport Number], FCs, [Telephone Number], [Address], Discount) 
values (1234, 567892, '���� ������', '89000000000', '������, ��. �������, 1', 10); 
revert;

execute as user = 'User1_Employee';
select top 1 * from Client;  
select top 1 * from Car;     
select top 1 * from Deal;    
select top 1 * from Fines;
insert into Deal ([Date of issue], [Return date], [Sum], [Passport Series], [Passport Number]) 
values ('2023-10-25', null, 10000, 1980, 123456); 
update Deal set [Sum] = 20000 where Id = 2;  
delete from Deal_Car where Id = 3;  
revert;




--7 �������� �������� ��
create table Cars (
    VIN varchar(20) primary key,
    Model varchar(30),
    YearOfManufacture int,
    CostPerDay money,
    BodyType varchar(20)
) as node;

create table Clients (
    PassportNumber int,
    PassportSeries int,
    FCs varchar(25),
    TelephoneNumber varchar(20),
    Address varchar(100),
    Discount int,
	primary key (PassportNumber, PassportSeries)
) as node;

create table Deals (
    DealId int primary key,
    DateOfIssue date,
    ReturnDate date,
    Sum int
) as node;

create table Rents as edge; -- ����� ��������� � ��������
create table IncludesCar as edge; -- ����� �������� � ������������

select * from Car

-- ����������
insert into Cars (VIN, Model, YearOfManufacture, CostPerDay, BodyType)
select VIN, Model, [The year of manufacture], [Cost per day], [Body Type]
from Car;

insert into Clients (PassportNumber, PassportSeries, FCs, TelephoneNumber, Address, Discount)
select [Passport Number], [Passport Series], FCs, [Telephone Number], [Address], Discount
from Client;

insert into Deals (DealId, DateOfIssue, ReturnDate, Sum)
select Id, [Date of issue], [Return date], [Sum]
from Deal;

select * from Clients

select * from Deal d
join Clients cl 
on cl.PassportNumber = d.[Passport Number] and cl.PassportSeries = d.[Passport Series] join Deals ds on d.Id = ds.DealId;

-- ����� ��������� � ��������
insert into Rents ($from_id, $to_id)
(select 
    cl.$node_id,
    ds.$node_id
from Deal d
join Clients cl 
on cl.PassportNumber = d.[Passport Number] and cl.PassportSeries = d.[Passport Series] join Deals ds on d.Id = ds.DealId);

-- ����� �������� � ������������
insert into IncludesCar ($from_id, $to_id)
select 
    d.$node_id,
    c.$node_id
from Deal_Car dc
join Deals d on d.DealId = dc.Id
join Cars c on c.VIN = dc.VIN;

drop table if exists Cars;
drop table if exists Clients;
drop table if exists Deals;
drop table if exists Rents;
drop table if exists IncludesCar;

-- ������� �� ���. 3.2
-- a) ���������� ������� ������ ������� �� ����� � ������ �������� ������
select d.DateOfIssue, sum(d.Sum) as Revenue
from Deals d
where d.DateOfIssue >= datefromparts(year(getdate()), month(getdate()) - 2, 1)
group by d.DateOfIssue
order by d.DateOfIssue;

-- b) ��� ������� ���� � ������ ���������� ������� ���������� �����, ��������� � �����
select c.BodyType, c.Model, count(*) as Count
from Cars c
group by c.BodyType, c.Model;

-- c) ����� ������, �� ������������ ������� (� ������ �������� ���� �� ���������� ���� ������� �� ���� ��������� �� ����� ������)
select Model from Cars where Model not in
( 
select distinct
    c.Model
from
    Cars c,
    IncludesCar ic,
    Deals d
where
    match(d-(ic)->c)
	
	AND year(d.DateOfIssue) = year(getdate())
GROUP BY c.Model
)
-- d) ����� ���������� �������� (�������������� �������� ����� ����� 3-� ���) 
--� ���������� ��� ��� ������ ������ (����., ���� ������ ����� ������ 
--� 4-� ��� � ������ 2%, � 6-� � 4%, � 8-� � 6%, �� ���� ������ ��� �����-���� ����������, �� ������ �� ���������������)
select cl.FCs, cl.PassportNumber, cl.PassportSeries,
       count(r.$from_id) as DealCount,
       case
           when count(r.$from_id) >= 8 then 6
           when count(r.$from_id) >= 6 then 4
           when count(r.$from_id) >= 4 then 2
           else 0
       end as Discount
from Clients cl, Rents r, Deals d where match(cl-(r)->d)
group by cl.FCs, cl.PassportNumber, cl.PassportSeries
having count(r.$from_id) > 3;

-- e) ����� ��������, �������� ����� ������������ �������� �������, � ������ ��� ��� ����� ����� ������������ ������
select cl.FCs, cl.PassportNumber, cl.PassportSeries, count(*) as DealCount
from 
Clients cl, Rents r, Deals d 
where match(cl-(r)->d)
group by cl.FCs, cl.PassportNumber, cl.PassportSeries
order by count(*) desc;

-- ������ Shortest_Path
SELECT
    StartClient.FCs AS ClientName,
    STRING_AGG(Car.Model, ' -> ') WITHIN GROUP (GRAPH PATH) AS Path
FROM
    Clients AS StartClient,
    Rents FOR PATH AS RentEdge,
    Deals FOR PATH AS DealNode,
    IncludesCar FOR PATH AS CarEdge,
    Cars FOR PATH AS Car
WHERE MATCH(SHORTEST_PATH(StartClient (-(RentEdge)-> DealNode -(CarEdge)-> Car)+))
AND StartClient.FCs = '��������.�';



