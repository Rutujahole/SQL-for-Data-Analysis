/* Refinig Selections - refine our select statements like order by sales or get  top most sold books ...etc, limit no of results we get */ 

/*distinct*/
SELECT DISTINCT
    author_lname
FROM
    books;
SELECT DISTINCT
    CONCAT(author_lname, ' ', author_fname)
FROM
    books;
SELECT DISTINCT
    author_lname, author_fname, released_year
FROM
    books;

/*order by - sort by results*/
SELECT 
    book_id, author_fname, author_lname
FROM
    books
ORDER BY author_fname;  /*by default it orders in asc order*/



