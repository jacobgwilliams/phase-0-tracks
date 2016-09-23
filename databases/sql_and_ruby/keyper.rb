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
db = SQlite3::Database.new("keyper.db")
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

