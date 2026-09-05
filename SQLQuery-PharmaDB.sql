
SELECT TOP 10 * FROM pharma_sales;

SELECT Drug_Name, SUM(Total_Sales) AS Revenue
FROM pharma_sales
GROUP BY Drug_Name
ORDER BY Revenue DESC;

SELECT Drug_Name, 
       COUNT(*) AS Expired_Batches, 
       SUM(Quantity) AS Expired_Units,
       SUM(Total_Sales) AS Revenue_Locked
FROM pharma_sales
WHERE Expired_Stock = 1
GROUP BY Drug_Name
ORDER BY Revenue_Locked DESC;

SELECT Region, Drug_Name, Revenue, Rank_In_Region
FROM (
    SELECT Region, Drug_Name,
           SUM(Total_Sales) AS Revenue,
           RANK() OVER (PARTITION BY Region ORDER BY SUM(Total_Sales) DESC) AS Rank_In_Region
    FROM pharma_sales
    GROUP BY Region, Drug_Name
) AS ranked
WHERE Rank_In_Region = 1;

SELECT Distributor, 
       SUM(Total_Sales) AS Total_Revenue,
       RANK() OVER (ORDER BY SUM(Total_Sales) DESC) AS Distributor_Rank
FROM pharma_sales
GROUP BY Distributor;