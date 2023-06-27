--Given a list of products return
--all products that are recyclable
--and low fat.

SELECT Products.product_id
FROM Products
WHERE low_fats = 'Y' 
AND recyclable = 'Y'
