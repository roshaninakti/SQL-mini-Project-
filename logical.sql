use book_shop;
select * from books 
  where released_year !=2017;
  
select * from books 
  where author_lname not like '%Da';
  select *from books;
  select * from books 
   where stock_quantity  >200;
   select * from books 
   where stock_quantity  < 50;
select * from books 
where author_fname ='Jhumpa' AND author_lname='Lahiri';
use book_shop;
select title author_fname from books
   where char_length(title) >30
    OR author_fname like '%s';
    select released_year , title from books ;
    select * from books
      where released_year  between  2004 and 2015;
select pages , title from books 
  where pages not between 150 and 300;
   select released_year from books 
    where released_year >= 2000
     And  released_year % 2 =0;
     select title , released_year from books
      where released_year < 1980;
      select author_lname, title from books 
      where author_lname = 'Eggers'
       or author_lname = 'chabon';
       
       select title ,  author_lname ,released_year from books 
         where author_lname ='Lahiri'
         And released_year > 2000;
         select pages, title from books 
         where  pages between 100 and 200;
      
      select * from books;
      
      select title , author_lname from books 
       where author_lname like 'C%' 
       or author_lname like 'S%';
       
       select title, author_lname,
       case
            when title Like '%stories%' then 'short stories'
            when  title = ' just kids' then  'Memoir'
            when title = 'A Heartbreaking Work of Staggering Genius' then 'Memoir'
       else 'novel'
       end as type 
       from books;

SELECT author_fname, author_lname,
	CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
	END AS count
FROM books
WHERE author_lname IS NOT NULL
GROUP BY author_fname, author_lname;
        