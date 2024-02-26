# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

["The Refuge Church", "Crossroads Church", "Silverdale Community Church"].each do |n|
  Organization.find_or_create_by!(name: n)
end

["Need", "Resource", "Match","Team","Service"].each do |n|
    Supertype.find_or_create_by!(name: n)
end

Type.find_or_create_by!(name: "Need", supertype_id: 1)
Type.find_or_create_by!(name: "Resource", supertype_id: 2)

Resource.delete_all
rt = Type.find_by(name: "Resource").id
["Clothing",
"Equipment",
"Food",
"Housing",
"Money",
"Services",
"Skills",
"Tools",
"Transportation",
"Volunteers"
].each do |n|
  Resource.find_or_create_by!(name: n, type_id: rt )
end

rt = Type.find_by(name: "Team").id
["Church","Family","Individual","Team"].each do |n|
  Type.find_or_create_by!(name: n, supertype_id: rt)
end

["_OTHER",
"Car Detailer",
"Car Mechanic",
"Carpenter",
"Child Care Giver",
"Counsellor",
"Delivery Driver",
"Drywaller",
"Electrician",
"Gardner",
"General Laborer",
"Handyman",
"House Cleaner",
"Janitor",
"Landscaper",
"Lawn Mowing",
"Mover",
"Musician",
"Pastor",
"Pet Care Giver",
"Photographer",
"Plumber",
"Rug Installer",
"Teacher",
"Technology/Media",
"Videographer",
"Visitation"
].each do |n|
  Type.find_or_create_by!(name: n, supertype_id: 5)
end
