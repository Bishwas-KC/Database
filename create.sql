--create table for book
CREATE TABLE Book (
    id        INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL ,
    title     text NOT NULL ,
    price     real NOT NULL ,
    isbn      varchar(20) NOT NULL,
    genre     text ,
    publishDate  DATETIME ,
    AuthorId     Int NOT NULL,
    PublisherId  Int NOT NULL,
    FOREIGN key(AuthorId) REFERENCES Author(id) ,
    FOREIGN key(PublisherId) REFERENCES publisher(id)
    );


    --for Author table
 create table Author(
    id          integer PRIMARY key AUTOINCREMENT NOT NULL ,
    name        text  NOT NULL ,
    address     text ,
    email       text(50) ,
    education   text );

 --create table for publisher
 create table publisher(
    id          integer PRIMARY key AUTOINCREMENT NOT NULL ,
    name        text  NOT NULL ,
    address     text  NOT NULL ,
    phone       varchar(10) ,
    established dateTime );