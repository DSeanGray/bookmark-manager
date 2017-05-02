Bookmark Manager

# User Stories

```
as a user
so i can select a link
i want to see a list of links

as a user
so i can add new links
i want to be able to add a link

as a user
so i can group my links
i would like to add tags to my links

as a user
so i can view groups of links
i want to filter links by tags
```


## CRUD and SQL

one of the most important building blocks for interacting with data inside a database is CRUD.
CRUD, can be broken down to to Create, Read, Update, Delete.

Using SQL you can create CRUD stored procedures for your Database.

Create

```
INSERT INTO "students" (NAME) VALUES ( 'Garry Bernhardt');
```
This command inserts data into your specified database assigning the information a name value.

Read

```
SELECT * FROM students;
```
This command asks sql to "SELECT" everything from the "students" table and READ it.

Update
```
UPDATE "students" SET NAME = 'Garry Bernhardt' WHERE ID = 1;
```
This command tells SQL to Update or change the name value in the students table.

Delete
```
DELETE FROM "students" WHERE ID = 1;
```
Lastly the SQL command Delete from the table students using the ID 1.
