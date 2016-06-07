#make a program to 
#accept input of children's names, age, parent contact info (name and number)
#the above will go into a sql table of childrens names
#accept input for activities that children attend (name of activity and address)
#the above will be captured in an acitivities table
#accept input of carpool drivers:  driver name, foreign id 
#to link to children's table. 
#foreign id to link to acitivities table. 
#
#match driver to child and activity
#how do i tie parent contact to driver since they will actually be a parent of a child in the childrens table so 
#the id of parent will match a child. 
# 
# find activities with times that overlaps with driver availability, 
# book driver based on availability
# 
# 
# Needs:  Program will require sqlite3   'faker' so that driver code can make use of this.""
# main connection is overlap of parent availability and activity time
# version 1- just assign a parent to an activity to either drive or pick up
# assume willingness and availability.
# student list = attendee list.
# 
# v2 future release match on availability.  match students to diffent activities
# add drive to activity or drive from acitivity
# 
# create SQLite3 database.  Want array of all the data so accessible by  index.
db = SQLite3::Database.new("children.db")

create_table_cmd = <<-SQL
	id INTEGER PRIMARY KEY,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	age INTEGER
	parent_name VARCHAR(255)
	phone_number INTEGER

SQL

db.execute(create_table_cmd)
