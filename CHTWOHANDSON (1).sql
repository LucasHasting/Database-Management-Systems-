select * from books;
select title from books;
select title, pubdate as "Publication Date" from books;
select customer#, city, state from customers;
select name, contact as "Contact Person", phone from publisher;
select unique category from books;   
select distinct Customer# from orders;
select category, title from books;
select lname||', '||fname as name from author;
select order#, item#, isbn, quantity, paideach, quantity * paideach as "ITEM TOTAL" from orderitems;