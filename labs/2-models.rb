# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
new_Salesperson = Salesperson.new
new_Salesperson["first_name"] = "Cydney"
new_Salesperson["last_name"] = "Smith"
new_Salesperson["email"] = "cydney.smith@kellogg.northwestern.edu"
new_Salesperson.save

new_Salesperson2 = Salesperson.new
new_Salesperson2["first_name"] = "Joe"
new_Salesperson2["last_name"] = "Rice"
new_Salesperson2["email"] = "joexrice@gmail.com"
new_Salesperson2.save
# 3. write code to display how many salespeople rows are in the database
puts "There are #{Salesperson.all.count} salespeople"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

Cydney = Salesperson.find_by({"first_name" => "Cydney"})
#Cydney["email"] = "cydney.m.smith11@gmail.com"
#Cydney.save

# CHALLENGE:
# 5. write code to display each salesperson's full name
# puts "#{Cydney["first_name"]} #{Cydney["last_name"]}" <- output one

all_salespeople = Salesperson.all
    #need .all because Salesperson is just an instance.
for salesperson in all_salespeople
    #the for "XXXXX" --- XXXX name should be a singular of our array (so something like "salesperson in Salesperson.all")
puts "#{salesperson["first_name"]} #{salesperson["last_name"]}"
end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
