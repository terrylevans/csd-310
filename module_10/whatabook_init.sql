DROP USER IF EXISTS 'whatabook_user'@'localhost';

CREATE USER 'whatabook_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'MYSQL8IsGreat!';

GRANT ALL PRIVILEGES ON whatabook.* TO 'whatabook_user'@'localhost';

ALTER TABLE wishlist DROP FOREIGN KEY fk_book;
ALTER TABLE wishlist DROP FOREIGN KEY fk_user;

DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS book;
DROP TABLE IF EXISTS store;
DROP TABLE IF EXISTS wishlist;

CREATE TABLE store (
    store_id INT NOT NULL AUTO_INCREMENT,
    locale VARCHAR(500) NOT NULL,
    PRIMARY KEY(store_id)
);

CREATE TABLE book (
    book_id INT NOT NULL AUTO_INCREMENT,
    book_name VARCHAR(200) NOT NULL,
    author VARCHAR(200) NOT NULL,
    details VARCHAR(500),
    PRIMARY KEY(user_id)
);

CREATE TABLE user (
    user_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(75) NOT NULL,
    last_name VARCHAR(75) NOT NULL,
    PRIMARY KEY(user_id)
);

CREATE TABLE wishlist (
    wishlist_id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    book_id INT NOT NULL,
    PRIMARY KEY(wishlist_id),
    CONSTRAINT fk_book
    FOREIGN KEY (book_id)
        REFERENCES book(book_id),
    CONSTRAINT fk_user
    FOREIGN KEY (user_id)
        REFERENCES user(user_id)
);
    
    

INSERT INTO book(book_name, author, details)
    VALUES('The Blade Itself', 'Joe Abercrombie', 'Book One of the First Law Trilogy');

INSERT INTO book(book_name, author, details)
    VALUES('Before They Are Hanged', 'Joe Abercrombie', 'Book Two of the First Law Trilogy');

INSERT INTO book(book_name, author, details)
    VALUES('Last Argument of Kings', 'Joe Abercrombie', 'Book Three of the First Law Trilogy');

INSERT INTO book(book_name, author, details)
    VALUES('The Heroes', 'Joe Abercrombie', 'Stand Alone Book After First Law Trilogy');

INSERT INTO book(book_name, author, details)
    VALUES('Best Served Cold', 'Joe Abercrombie', 'Stand Alone Book After First Law Trilogy');

INSERT INTO book(book_name, author, details)
    VALUES('Cache Lake Country', 'John J. Rowlands', 'Life In The North Woods');

INSERT INTO book(book_name, author, details)
    VALUES('Without Remorse', 'Tom Clancy', 'The Origin of Mr. Clark');

INSERT INTO book(book_name, author, details)
    VALUES('Executive Orders', 'Tom Clancy', 'Jack Ryan Becomes POTUS');

INSERT INTO book(book_name, author, details)
    VALUES('A Handful of Hard Men', 'Hannes Wessel', 'The SAS and the Battle for Rhodesia');

INSERT INTO users(first_name, last_name)
    VALUES('Tom', 'Sawyer');

INSERT INTO users(first_name, last_name)
    VALUES('Mark', 'Twain');

INSERT INTO users(first_name, last_name)
    VALUES('Davy', 'Crockett');

INSERT INTO wishlist(users_id, book_id)
    VALUES(
        (SELECT users_id FROM users WHERE first_name = 'Tom'),
        (SELECT book_id FROM book WHERE book_name = 'The Blade Itself')
    );

INSERT INTO wishlist(users_id, book_id)
    VALUES(
        (SELECT users_id FROM users WHERE first_name = 'Mark'),
        (SELECT book_id FROM book WHERE book_name = 'Cache lake Country')
    );

INSERT INTO wishlist(users_id, book_id)
    VALUES(
        (SELECT users_id FROM users WHERE first_name = 'Davy'),
        (SELECT book_id FROM book WHERE book_name = 'Without Remorse')
    );  
