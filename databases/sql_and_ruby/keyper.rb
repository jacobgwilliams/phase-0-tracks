# KeyPer ("Keeper")
# Jacob Williams
# Assignment 8.5

# How often do you discover that, on the morning of an important flight, you can't find your passport? Where did you put it since the last time you used it? Or maybe it's time to pay rent - the only time of the month you use your checkbook. Do you rememember where it is since the last time you used it?
# There are many items that come to mind that, for me, are crucially important *not* to lose, but I use so rarely that I frequently can't find them when I need them. I sometimes make a note of where I placed these things, but when the time comes around... where is that note?
# I'd like to make an app that basically stores the location of a selection of "small but important items," such as your keys, phone, wallet, MetroCard, passport, checkbook, etc.
# The user will be able to define their own list of "important items"
# The user will be able to update a database with the location of those items
# Another feature might be that the app seperates locations, so maybe one field includes "home, work, car, or other" for the location of the item, and then
# A potential feature might include a "reminder" function that reminds the user to check and see if said item is still there at a specified time. Maybe once a month, or something like that, you can remind yourself to check in and see if your things are still where you want them to be.
# The app is mainly self-governed, what are some features to combat human carelessness or forgetfulness?
# Another feature might be a combination storing feature or a password reminder feature in the event that you have the item stored somewhere you can't remember. You could potentially use a password protected function to access the password or combination to a lock or whatever.

### BEGIN!

# gems
require 'sqlite3'

# create database
db = SQLite3::Database.new("keyper.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS keys(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    location VARCHAR(255)
  )
SQL

# create a table for you to store your things and their locations
db.execute(create_table_cmd)

# PSEUDOCODE/Algorithm
# Should prompt user with instructions on how to use app
# Should accept user input that does the following:
# - Add new item to list of items, and a location of where they are
# - Request to see full list of items
# - Request an item's location by name (key)
# - Update an item's location
# - Delete an item from list
# Gravy on top might be:
# - An option for password protected item locations
# - An option to remind the user to check on an item's location at a requested time

def add_item(db, item, location)
  db.execute("INSERT INTO keys (item, location) VALUES (?, ?)", [item, location])
end

def delete_item(db, choice)
  db.execute("DELETE FROM keys WHERE #{choice} = #{item['item']}")
end

def list_items(db)
  puts "These are your important items:"
  items = db.execute("SELECT * FROM keys")
  items.each do |item|
    puts "- #{item['item']} is located here: #{item['location']}"
  end
end

def find_item(db, item)
  item = db.execute("SELECT '#{item}' FROM keys")
  puts "Your #{item['item']} is located here: #{item['location'].}"
end

def update_location(db, item, location)
  item = db.execute("SELECT '#{item}' FROM keys")
  puts "Where have you moved your #{item['item']}?"
  new_location = gets.chomp
  db.execute("UPDATE #{item['item']} SET location = #{new_location} WHERE #{item} = #{item['item']}")
  puts "Item location updated."
end

instruction_manual = "Using KeyPer is simple. Bla bla bla."

# DRIVER CODE

puts "Welcome to KeyPer! (not trademarked)"
puts "This is a tool that lets you keep a log of where you place important, but maybe easy to lose items in your home, office, or wherever!"
puts "Do you need instructions? [y/n]"
input = nil
until input == "y" || input == "n"
  input = gets.chomp.downcase
  if input == "y"
    puts instruction_manual
  elsif input == "n"
    puts "Great!"
  else
    puts "Input error: please enter 'y' or 'n'."
  end
end
puts "What would you like to do first?"
valid_input = FALSE
until valid_input == TRUE
  puts "Type the number for your desired function:"
  puts "1) Add a new item"
  puts "2) View current list of items and locations"
  puts "3) Enter a specific item to view"
  puts "4) Update an item's location"
  puts "5) Delete an item from your list"
  if input == "1"
    puts "What is the item you'd like to add?"
    item_name = gets.chomp
    puts "Where is this item stored?"
    item_location = gets.chomp
    add_item(db, item_name, item_location)
    puts "Item has been added."
    valid_input = TRUE
  elsif input == "2"
    list_items(db)
    valid_input = TRUE
  elsif input == "3"
    puts "What item would you like to view?"
    keys = db.execute("SELECT keys.item FROM keys")
    keys.each do |key|
      puts "#{key['key']}"
    end
    item = gets.chomp
    find_item(db, item)
    valid_input = TRUE
  elsif input == "4"
    puts "Which item would you like to update?"
    keys = db.execute("SELECT keys.item FROM keys")
    keys.each do |key|
      puts "#{key['key']}"
    end
    item = gets.chomp
    puts "Where is the updated location?"
    location = gets.chomp
    update_location(db, item, location)
    valid_input = TRUE
  elsif input == "5"
    puts "Which item would you like to delete?"
    keys = db.execute("SELECT keys.item FROM keys")
    keys.each do |key|
      puts "#{key['key']}"
    end
    item = gets.chomp
    certainty_answer = nil
    until certainty_answer == "y" || certainty_answer == "n"
      puts "Are you sure you want to delete #{item}? [y/n]"
      certainty_answer = gets.chomp
      if certainty_answer = "y"
        delete_item(db, item)
      elsif certainty_answer = "n"
        puts "Deletion aborted."
      else
        puts "Invalid input. Please enter 'y' or 'n'."
      end
    end
    valid_input = TRUE
  else
    puts "Invalid Input. Please enter the number of your choice."
  end
end