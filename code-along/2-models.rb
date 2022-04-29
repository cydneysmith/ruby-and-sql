# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file
puts "companies: #{Company.all.count}" # companies: 0

# 2. insert new rows in companies table
new_company = Company.new
new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "https://www.apple.com"
new_company.save

new_company2 = Company.new
new_company2["name"] = "Amazon"
new_company2["city"] = "Seattle"
new_company2["state"] = "WA"
new_company2.save

new_company3 = Company.new
new_company3["name"] = "Twitter"
new_company3["city"] = "San Francisco"
new_company3["state"] = "CA"
new_company3.save

puts "companies: #{Company.all.count}"

# 3. query companies table to find all row with California company
#all_companies = Company.all
#puts all_companies.inspect

#cali_companies = Company.where({"state"=>"CA"}) #where -- the result you're going to get is an array. the output is an array of companies (Company objects). Company is a thing, a class, now.
# puts cali_companies.inspect

# 4. query companies table to find single row for Apple
apple = Company.find_by({"name" => "Apple"}) 
#find_by - you only want one result, not an array. output is one company. 
# it will only ever return one thing -- if there are multiple things that meet your criteria, 
# it will return the first. (limit of 1 in SQL terms). use when you know there's only 1 thing in your db

#puts apple.inspect

# 5. read a row's column value

#puts apple["url"] #pull out url value.


# 6. update a row's column value

#amazon = Company.find_by({"name" => "Amazon"})
#amazon["url"] = "http://amazon.com/"
#amazon.save #we need save here because we're modifying an attribute of an object. this row makes the change in the DB


# 7. delete a row
twitter = Company.find_by({"name" => "Twitter"})
twitter.destroy