Pivot table :
	Convert column into row header.
	Use for presentation purpose.

	-- Syntax :
		Select Column1,column2 from
			(Select column1,column2.. from tbl_Name) as t1
		Pivot
			(aggreatefunction for (column to be used for total)[columnName]) as t2

	-- Example :
		Select * from tbl_Sales order by Region 

		Select Region,ISNULL([2018],0) as [2018],ISNULL([2019],0) as [2019],
			ISNULL([2020],0) as [2020],
			ISNULL([2021],0) as [2021],
			ISNULL([2022],0) as [2022],
			ISNULL([2023],0) as [2023] from
			(Select Region,Sales_Year,Sales from tbl_Sales) as t1
		Pivot
			(Sum(Sales) for [Sales_Year] in ([2018],[2019],[2020],[2021],[2022],[2023])) as t2
		Order by t2.Region

		Select Sales_Year,North,South,East from
			(Select Region,Sales_Year,Sales from tbl_Sales) as t1
		Pivot
			(Sum(Sales) for [Region] in (North,South,East)) as t2
		Order by t2.Sales_Year