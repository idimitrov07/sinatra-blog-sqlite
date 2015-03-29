require 'sqlite3'

#remove sqlite file
if File.exists? "blog.sqlite"
	File.delete("blog.sqlite")
end

db = SQLite3::Database.open('blog.sqlite')

#create table if it does not exists
db.execute <<SQL
	CREATE TABLE posts(
		id INTEGER PRIMARY KEY AUTOINCREMENT,
		title VARCHAR(255),
		body TEXT,
		timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
	);
SQL

#add dummy posts
db.execute <<SQL
	INSERT INTO posts (title, body)
	VALUES ("Post One", "Lorem ipsum porem impusm dsdasadadas asddasaas")
SQL

db.execute <<SQL
	INSERT INTO posts (title, body)
	VALUES ("Post two", "hello how asdare you wazz happening are you ok")
SQL