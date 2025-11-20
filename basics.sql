SELECT * FROM Customers ---> Lấy tất cả dữ liệu từ bản ghi Customers

SELECT DISTINCT ___ FROM Customers
---> Lấy dữ liệu __ từ bảng Customers nhưng không trùng lặp từ bản ghi

SELECT Count(*) AS __
FROM (SELECT DISTINCT _ FROM Customers);
---> Đếm các phần tử ___- không trùng lặp từ bản ghi Customers

SELECT * FROM Customers
WHERE City =  __
---> Lọc dữ liệu City cụ thể từ bản ghi Customers

SELECT * FROM Customers
WHERE CustomerID __ 
---> Lọc khoảng dữ liệu CustomerID từ bản ghi Customers với điều kiện tuỳ chỉnh

SELECT * FROM Customers
WHERE City LIKE '___%';
---> Lọc dữ liệu City từ bản ghi Customers bắt đầu bằng kí tự _

SELECT * FROM Customers
WHERE City IN (_, _, __, ... );

---> Lọc dữ liệu City từ bản ghi Customers trong những cái tên được nêu

SELECT * FROM Products
ORDER BY __ ASC / DESC
---> Lấy toàn bộ dữ liệu từ bản ghi, xong sắp xếp dữ liệu _ theo thứ tự tăng dần/ giảm dần
  
SELECT * FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%';

---> Lấy toàn bộ dữ liệu từ bản ghi Customer, lọc ra những bản ghi có dữ liệu Country là Spain và tên khách hàng bắt đầu bằng chữ G

SELECT * FROM Customers
WHERE Country = 'Brazil'
AND City = 'Rio de Janeiro'
AND CustomerID > 50;

SELECT * FROM Customers
WHERE Country = 'Spain'
AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');


---> Lấy toàn bộ dữ liệu từ bản ghi Customers, lọc ra các bản ghi có chứa tệp khách hàng ở Spain và tên khách hàng có thể được bắt đầu bằng G hoặc R


SELECT * FROM Customers
WHERE NOT Country = 'Argentina';
---> Lọc ra dữ liệu với quốc gia không phải là Argentina

SELECT * FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 60;
---> Lọc ra dữ liệu bản ghi có ID khách hàng nhỏ hơn 10 và lớn hơn 60

SELECT * FROM Customers
WHERE City NOT IN ('Paris', 'London');
---> Lọc ra dữ liệu bản ghi có dữ liệu City không phải là Paris;London


----LIKE--------
Starts with : ___%
Contains : %___%
Ends with : %____

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;

----> câu lệnh SQL này chọn ra các bản ghi mà có sự trùng khớp (điểm chung) giữa bảng Orders và bảng Customers dựa trên cột CustomerID.




