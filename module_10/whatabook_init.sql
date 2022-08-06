
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
