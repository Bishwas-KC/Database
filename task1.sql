-- Class Work
-- 1. Execute provided insert query to your sqlite db
-- 2. Add more data tables:
--      -- Publishers table: at least 5 publishers
--      -- Authors table: at least 7 authors
--      -- Books table: at least 20 Books
-- 3. Now write prapare following reports:
--      3.1 Get all books which are published in last 30 years
--      3.2 Get total price of books written by parijat
--      3.3 Get all publishers in descending order with number of books published so far
--      3.4 Get all authors with comma seperated list of books they have written

        
        --Get all books which are published in last 30 years
        SELECT *
        FROM book
        WHERE publishDate >= DATE('now', '-2 years');

        SELECT SUM(book.price) AS total_price
        FROM book
        INNER JOIN author ON book.AuthorId = author.id
        WHERE author.name = 'Parijat';

        --get all publishers in descending order wiht number of books publish
        SELECT publisher.name AS publisher, COUNT(book.id) AS number_of_books
        FROM book
        INNER JOIN publisher ON book.PublisherId = publisher.id
        GROUP BY publisher.name
        ORDER BY number_of_books DESC;

        --get all authors with coma sepereated list of books the have written
        SELECT a.name AS author, GROUP_CONCAT(b.title, ', ') AS books
        FROM book b
        INNER JOIN author a ON b.AuthorId = a.id
        GROUP BY a.name;

        

        SELECT *from publisher
        SELECT *from author 
        select *from book



    --insert data to book table
    insert INTO book
    VALUES
    (
        null,
        'Design and Analysis of algorithm',
        '480.34',
        'D3F34H3HS7',
        'CS',
        '2024/05/06',
        1,
        1
    );

    insert INTO book
    VALUES
    (
        null,
        'DBMS',
        '233.34',
        '2J4J2K543S',
        'CS',
        '2024/05/22',
        1,
        1
    );


--insert data ot author
INSERT into Author VALUES
    (
        null,
        'Sukraj Limbu',
        'Khotang,Nepal',
        'sukrajlimbu11@gmail.com',
        'MCA'
    );

    INSERT into Author VALUES
    (
        null,
        'David Googglen',
        'Texas,USA',
        'davidgog22@gmail.com',
        'YOU CAN T HURT ME'
    );


--insert for publisher
INSERT into publisher VALUES
    (
        null,
        'Asmita Publication',
        'Kathmandu,Nepal',
        '9998889808',
        '2024/08/08'
    );

    INSERT into publisher VALUES
    (
        null,
        'Susmita Publication',
        'Pokhara,Nepal',
        '9097393938',
        '2023/08/08'
    );

    INSERT INTO publisher values(
        null,
        'ABC',
        'Lalitpur,Nepal',
        '9868485825',
        '2018/05/09');
INSERT INTO publisher values(
        null,
        'Boudha',
        'Chitwan,Nepal',
        '9865585825',
        '2019/08/09');
INSERT INTO publisher values(
        null,
        'Alpha',
        'Kathmandu,Nepal',
        '9942585825',
        '2015/08/10'); 


INSERT INTO publisher values(
        null,
        'Samjhana',
        'Bhaktapur,Nepal',
        '9869785825',
        '2020/03/09');




-- More data population
INSERT INTO publisher values(
        null,
        'ABC',
        'Lalitpur,Nepal',
        '9868485825',
        '2018/05/09');
INSERT INTO publisher values(
        null,
        'Boudha',
        'Chitwan,Nepal',
        '9865585825',
        '2019/08/09');
INSERT INTO publisher values(
        null,
        'Alpha',
        'Kathmandu,Nepal',
        '9942585825',
        '2015/08/10'); 


INSERT INTO publisher values(
        null,
        'Samjhana',
        'Bhaktapur,Nepal',
        '9869785825',
        '2020/03/09');
insert into Publisher
VALUES
(
    null,
    'ABC Publishers',
    'Bhaktapur',
    '9851234345',
    '2010/01/15'
),
(
    null,
    'Samiksha Publications',
    'Kathmandu',
    '9841234345',
    '2005/01/15'
);

insert into Author
VALUES
(
    null,
    'Parijat',
    'Kathmandu',
    'parijat@gmail.com',
    'Masters in Philoshopy'
),
(
    null,
    'Suman Pokharel',
    'Kathmandu',
    'suman.pokheral@gmail.com',
    'Masters in Arts'
),
(
    null,
    'Laxmi Prasad Devkota',
    'Kathmandu',
    'laxmi.dev@gmail.com',
    'PHD. Literature'
),
(
    null,
    'Banira Giri',
    'Kaski',
    'banira.giri@gmail.com',
    'Masters in Education'
);

    INSERT into Author VALUES
    (
        null,
        'ShyamSundar',
        'Dheli,India',
        'shamg22@gmail.com',
        'Automic Habit'
    ),
     (
        null,
        'Kenal deni',
        'Wasinton D.C,USA',
        'kenal33@gmail.com',
        'ZERO TO ONE'
    ),
     (
        null,
        'MONK',
        'Newyork,USA',
        'monk12@gmail.com',
        'THINK LIKE A MONK'
    ),
     (
        null,
        'DEMAN',
        'Texas,USA',
        'deman1@gmail.com',
        'House Of Dragon'
    );





INSERT INTO Book
VALUES
(
    null,
    'मुनामदन',
    '650.50',
    'XZQ5687HGDTE34',
    'Drama',
    '1960/02/23',
    4,
    1
),
(
    null,
    'जीवनको छेउबाट',
    '450.50',
    'EKT5687HGDTE34',
    'Drama',
    '1960/02/23',
    3,
    3
),
(
    null,
    'शिरीषको फूल',
    '1050.25',
    'RGZ5687HGDTE34',
    'Drama',
    '1900/02/23',
    2,
    4
),
(
    null,
    'कारागार',
    '430.25',
    'IOZ5687HGDTE34',
    'Fantasy',
    '2000/02/23',
    2,
    4
),
(
    null,
    'जीवनको छेउबाट',
    '1050.25',
    'RGZ5687HGDTE34',
    'Mystory',
    '1970/02/23',
    3,
    3
);

INSERT into book 
VALUES
   (
    null,
    'To Kill a Mockingbird',
    '7.99',
    '978-0061120084',
    'Fiction',
    '1960-07-11',
    1,
    101
   ),
    (
        null,
      'To Kill a Mockingbird',
       '7.99',
        '978-0061120084',
        'Fiction',
        'publishDate": "1960-07-11',
        1,
        101
    );,
    INSERT into book 
    VALUES
    (
        null,
        'NinteenEightyFive',
        '9.99',
        '978-0451524935',
        'Dystopian',
        '1949-06-08',
        2,
        102
    ),
    (
        null,
        'Moby-Dick',
        '8.99',
        '978-1503280786',
        'Adventure',
        '1851-10-18',
         3,
         103
    ),
    (
        
        null,
        'Pride and Prejudice',
        '6.99',
        '978-1503290563',
        'Romance',
        '1813-01-28',
         4,
         104
    ),
    (

        null,
        'The Great Gatsby',
        '10.99',
        '978-0743273565',
        'Fiction',
        '1925-04-10',
        5,
        101
    );

       
