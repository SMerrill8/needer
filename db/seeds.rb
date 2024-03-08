# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

# Organizations
["The Refuge Church", "Crossroads Church", "Silverdale Community Church"].each do |n|
  Organization.find_or_create_by!(name: n)
end

# Supertypes
["Need", "Resource", "Match","Team","Service"].each do |n|
    Supertype.find_or_create_by!(name: n)
end

# Team Types
rt = Supertype.find_by(name: "Team").id
["Church","Family","Individual","Team"].each do |n|
  Type.find_or_create_by(name: n) do |x|
    x.supertype_id = rt
  end
end

# Resource Types
rt = Supertype.find_by(name: "Resource").id
["_OTHER",
"Car Detailer",
"Car Mechanic",
"Carpenter",
"Clothing",
"Child Care Giver",
"Counsellor",
"Delivery Driver",
"Drywaller",
"Electrician",
"Gardner",
"General Laborer",
"Handyman",
"House Cleaner",
"Housing available",
"Janitor",
"Landscaper",
"Lawn Mowing",
"Mover",
"Money",
"Musician",
"Pastor",
"Pet Care Giver",
"Photographer",
"Plumber",
"Rug Installer",
"Teacher",
"Tool",
"Transportation",
"Technology/Media",
"Videographer",
"Volunteer",
"Visitation"
].each do |n|
  Type.find_or_create_by(name: n) do |type|
    type.supertype_id = rt
  end
end

# match types
# (may not be needed)
