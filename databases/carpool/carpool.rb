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

require 'sqlite3'
require 'faker'
#should have named the database carpool!
db = SQLite3::Database.new("children.db")

create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS children(
	id INTEGER PRIMARY KEY,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	age INT,
	parent_name VARCHAR(255),
	phone_number INT
)
SQL

db.execute(create_table_cmd)

def create_child(db, first_name, last_name, age, parent_name, phone_number)
	 db.execute("INSERT INTO children (first_name, last_name, age, parent_name, phone_number) 
	 	VALUES (?, ?, ?, ?, ?)", [first_name, last_name, age, parent_name, phone_number])
end
#code below generated 15 children
#5.times do 
#	create_child(db, Faker::Name.first_name, Faker::Name.last_name, 9, Faker::Name.name,
#	Faker::PhoneNumber.cell_phone)

#end
#
#
#db = SQLite3::Database.new("children.db")
db = SQLite3::Database.new("children.db")

create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS activities(
	id INTEGER PRIMARY KEY,
	activity VARCHAR(255),
	location VARCHAR(255),
	weekday VARCHAR(255)
	
)
SQL

db.execute(create_table_cmd)
db.execute("INSERT INTO activities (activity, location, weekday) VALUES ('Soccer', 'Avenel Park','Mondays')")
db.execute("INSERT INTO activities (activity, location, weekday) VALUES ('Karate', 'Potomac Center','Wednesdays')")
db.execute("INSERT INTO activities (activity, location, weekday) VALUES ('Gymnastics', 'Dynamite Rockville','Fridays')")
# # def create_activity(db, activity, location, weekday)
# # db.execute("INSERT INTO activities (activity, location, weekday) 
# 	 	VALUES (?, ?, ?)", [activity, location, weekday])
# end
# #
#
#
#
#
#
#
