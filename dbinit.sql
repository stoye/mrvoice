# This initializes the Mr. Voice database
# Import it by running:
#
# mysql -u SUPERUSER_NAME -p YOUR_DATABASE < dbinit.sql
# 
# where SUPERUSER_NAME is the name of a user that can create tables
# within your database, and YOUR_DATABASE is the name of that database.

CREATE TABLE mrvoice (
   id int(8) NOT NULL auto_increment,
   title varchar(255) NOT NULL,
   artist varchar(255),
   category varchar(8) NOT NULL,
   info varchar(255),
   filename varchar(255) NOT NULL,
   time varchar(10),
   modtime timestamp(6),
   publisher varchar(16),
   PRIMARY KEY (id)
);

CREATE TABLE categories (
   code varchar(8) NOT NULL,
   description varchar(255) NOT NULL
);

# We'll give you a default category to put things in.  It can
# be deleted from within the program if you don't want it.
INSERT INTO categories VALUES ('GEN','General Category');

#--
# CVS ID: $Id: dbinit.sql,v 1.8 2004/03/05 20:14:43 minter Exp $
