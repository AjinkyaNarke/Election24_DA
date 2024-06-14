
--Display ALL
Select * from Election24


SELECT TOP (1000) [Constituency]
      ,[Const_No]
      ,[Leading_Candidate]
      ,[Leading_Party]
      ,[Trailing_Candidate]
      ,[Trailing_Party]
      ,[Margin]
      ,[Status]
--  FROM [Election2024].[dbo].[election24]
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--1)Winning Party
select count(Leading_Party) as Total_Wins,[Leading_Party]  as Seat from election24 group by [Leading_Party]  order by Total_Wins desc;


--""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++""
--2.) subquery with highet number margin winner
select Leading_Candidate ,Margin from election24 where Margin =(
select max(Margin) as Winner from election24 )

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
----3).Less  than 10000 margin winner
select Leading_Candidate,Leading_Party, Margin as Winner from election24 where Margin <10000

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
----4.)Top 5 Margin winner

select top 5 Leading_Candidate,Margin from election24 order by Margin desc;

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--5)Very close margin win
 
 select top 5 Leading_Candidate,Margin from election24 order by Margin ;

 --+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

 --6)Top 10 highest voting winer from BJP
 select top 10 Leading_Candidate,Leading_Party,Margin from election24 where Leading_Party='Bharatiya Janata Party' order by Margin desc ;


 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

--7)Top 10 highest voting winer from CONGRESS

select top 10 Leading_Candidate,Leading_Party,Margin from election24 where Leading_Party='Indian National Congress' order by Margin desc ;

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


