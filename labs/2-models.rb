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
new_salesperson=Salesperson.new

new_salesperson["first_name"]="Ben"
new_salesperson["last_name"]="Block"
new_salesperson["email"]="ben@email.com"
new_salesperson.save

no_of_salespeople = Salesperson.all.count
puts "Salespeople: #{no_of_salespeople}"

new_salesperson=Salesperson.new
new_salesperson["first_name"]="Brian"
new_salesperson["last_name"]="Eng"
new_salesperson["email"]="brian@email.com"
new_salesperson.save


# 3. write code to display how many salespeople rows are in the database
# ---------------------------------
# Salespeople: 2
no_of_salespeople = Salesperson.all.count
puts "Salespeople: #{no_of_salespeople}"

# 4. modify/update column data for a row in the salespeople table.
brian= Salesperson.find_by({"first_name"=>"Brian"})
p brian

brian["email"] = "brian@yahoo.com"
p brian
brian.save
p brian

# CHALLENGE:
# 5. write code to display each salesperson's full name
p Salesperson.all
for person in Salesperson.all
    p person["first_name"] +" "+ person["last_name"]

end


# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
