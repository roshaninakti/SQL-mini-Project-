create database book_shop;
use book_shop;
CREATE TABLE books 
	(
		book_id INT AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);
 
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
select author_lname from books;
select  distinct   author_lname from books;
select * from books order by author_lname desc limit 5, 1000;
select * from books where author_lname like '%s';
select count(*) from books;
select count(title), count(author_lname) from books;
select count(distinct author_lname) from books;
select count(*) from books where title like '%r%';
select *from books;
select released_year, count(*) from books group by released_year ;
select max(pages) from books;
select max('hrutik') ;
select max(released_year) from books;
select max(author_lname) from books;
select title, pages from books
 where pages = (select min(pages)from books);
select author_fname, author_lname , count(*) from books
   group by author_fname, author_lname;
   
   select sum(pages) from books;
   select avg(pages) from books;
   select avg(released_year) from books ;
   select count(*) from books;
   select released_year, count(*) from books group by released_year;
   select  sum (stock_quantity)  from books group by stock_quantity;
   select * from books;
   select concat(author_fname, ' ' , author_lname) ,avg(released_year) from books group by author_fname, author_lname; 
   SELECT AVG(released_year) 
FROM books GROUP BY author_lname, author_fname;
select  concat (author_fname ,' ' , author_lname) ,pages from books
    where pages =  (select max(pages) from books) ;
    
    select released_year , count(*) as books, avg(pages) from books  
    group by released_year
    order by released_year
    ;
 