CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

bookmark_manager=# SELECT * FROM bookmarks;
bookmark_manager=# INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');
bookmark_manager=# INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');
bookmark_manager=# INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');

However, we can do more exciting things with SELECT. For instance, we can limit the number of records to the top two:

bookmark_manager=# SELECT * FROM bookmarks LIMIT 2;
Or even scope our query to specific rows of data:

bookmark_manager=# SELECT * FROM bookmarks WHERE url = 'http://www.makersacademy.com';

DELETE FROM bookmarks WHERE url = 'http://www.twitter.com';

UPDATE bookmarks SET url = 'http://www.destroyallsoftware.com' WHERE url = 'http://www.askjeeves.com';
