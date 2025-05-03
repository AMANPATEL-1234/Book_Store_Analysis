create database bookstore;
use bookstore;
alter table aman1 drop column MyUnknownColumn; #There is two columns which have no value in there column that'why i dropped this column.
alter table aman1 drop column `MyUnknownColumn_[0]`;
select * from aman1;
#problem1:->Find the number of books available in stock.
select count(*) as No_of_Books from aman1 where stock='In stock';
#problem2:->List the top 5 most expensive books.
select * from aman1 order by `price($)` desc limit 5;
#problem3:->Find the average rating of books.
select avg(`rating(out_of_5)`) as average_of_books from aman1;
#problem4:->Retrieve the total number of books for each rating(e.g.,1-star,2-star,etc).
select `rating(out_of_5)`,count(`rating(out_of_5)`) as total_no_books from aman1 group by `rating(out_of_5)`; 
#problem5:->List all the books whose price is greater than average price of books. 
select * from aman1 where `price($)`>(select avg(`price($)`) from aman1);
#problem6:->List all the books who have high rating(5 star). 
select * from aman1 where `rating(out_of_5)`=5;
#problem7:->List all books who have low rating(between 1 or 2 star including 1 & 2). 
select * from aman1 where `rating(out_of_5)` between 1 and 2;
#problem8:->List all books which are not in stock. 
select * from aman1 where stock !='In stock';
#problem9:->Find the book which have maximum price.
select max(`price($)`) as Max_Price from aman1;
#problem10:->Find the book which have lowest price. 
select min(`price($)`) as Min_Price from aman1;