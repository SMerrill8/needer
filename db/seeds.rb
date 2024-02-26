# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

["The Refuge Church"].each do |n|
  Organization.find_or_create_by!(name: n)
end

["Need", "Resource", "Match","Team","Service"].each do |n|
    Supertype.find_or_create_by!(name: n)
end

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
  Type.find_or_create_by!(name: n, supertype_id:2)
end

["Church","Family","Individual","Team"].each do |n|
  Type.find_or_create_by!(name: n, supertype_id: 4)
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
