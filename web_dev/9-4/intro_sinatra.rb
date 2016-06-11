# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /


get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# #A /contact route that displays an address (you can make up the address).

get'/contact/' do

"The address is: 7 Persimmon Tree Lane, Bethesda, MD 20817"
end


get'/contact/:address' do
address = params[:address]
"#{address} is 7 Persimmon Tree Lane"
end


# A /great_job route that can take a person's name as a query parameter (not a route parameter) and say "Good job, [person's name]!". If the query parameter is not present, the route simply says "Good job!"

get '/great_job' do 
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end 

# A route that uses route parameters to add two numbers and respond with the result. 

get '/:number_1/plus/:number_2' do 
  #take 2 params as strings conver to variables and conver to integers
  number_1 = params[:number_1].to_i
  number_2 = params[:number_2].to_i
 
 #perform addition and return result as string
  result = number_1 + number_2
  result.to_s
  # "This is the result: #{result}"

 # "nice job #{number1} and #{number2}"
end 


