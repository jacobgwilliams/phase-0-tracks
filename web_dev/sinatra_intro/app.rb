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
  students.to_s
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a GET route that retrieves
# an address

get '/contact' do
  "5038 NC Hwy 96 South,<br>Oxford, NC 27565"
end

# write a GET route that retrieves
# a person's name and says Good job, NAME, otherwise just says Good job!

get '/great_job' do
  name = params[:name]
  if name
    "Great job, #{name}!"
  else
    "Great job!"
  end
end

# write a GET route that
# takes two numbers and responds with their sum

get '/addition' do
  num_1 = params[:num_1].to_i
  num_2 = params[:num_2].to_i
  "The sum of #{num_1} and #{num_2} is #{num_1 + num_2}"
end

# write a GET route that
# searches the Database (for name)
# NOTE: unsure why the hell this isn't working... will come back later

get '/namesearch/:name' do
  student = db.execute("SELECT * FROM students WHERE name=?", [params[:name]])[0]
  student.to_s
end