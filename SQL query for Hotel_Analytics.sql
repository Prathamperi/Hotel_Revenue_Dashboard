with yearinfo as (Select * from dbo.['2018$']
Union
Select * from dbo.['2019$']
union
Select * from dbo.['2020$']) 

select * from yearinfo
left join dbo.market_segment$
on yearinfo.market_segment=dbo.market_segment$.market_segment
left join dbo.meal_cost$
on meal_cost$.meal=yearinfo.meal



