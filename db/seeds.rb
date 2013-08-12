# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Campground.destroy_all
Park.destroy_all

park = Park.create(name: "Yosemite")

Campground.create(name: "North Pines", park_id: park.id, url: 'http://www.recreation.gov/camping/North_Pines/r/campgroundDetails.do?contractCode=NRSO&parkId=70927&topTabIndex=Search')
Campground.create(name: "Lower Pines", park_id: park.id, url: 'http://www.recreation.gov/camping/Lower_Pines/r/campgroundDetails.do?contractCode=NRSO&parkId=70928&topTabIndex=Search')
Campground.create(name: "Upper Pines", park_id: park.id, url: 'http://www.recreation.gov/camping/Upper_Pines/r/campgroundDetails.do?contractCode=NRSO&parkId=70925&topTabIndex=Search')
Campground.create(name: "Tuolumne Meadows", park_id: park.id, url: 'http://www.recreation.gov/camping/Tuolumne_Meadows/r/campgroundDetails.do?contractCode=NRSO&parkId=70926&topTabIndex=Search')


puts "database seeded"