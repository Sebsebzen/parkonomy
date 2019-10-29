# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  
#User.destroy_all
#Carpark.destroy_all

user_1 = User.create!(email: "test2@test.com", password: "password") 
  

  Carpark.create!(user: user_1, average_rating: 5,  length: "500", width: "300", height:"300", latitude: "1.317815", longitude:"103.858230", rate_day:"10", photo:"https://source.unsplash.com/XlydZHgSQOs")
  Carpark.create!(user: user_1, average_rating: 4,  length: "500", width: "300", height:"200", latitude: "1.356573", longitude:"103.973039", rate_day:"15", photo:"https://source.unsplash.com/JKZkFk8WnrI")  
  Carpark.create!(user: user_1, average_rating: 5,  length: "500", width: "350", height:"200", latitude: "1.278443", longitude:"103.865582", rate_day:"20", photo:"https://source.unsplash.com/_rxObsjG8G0")
  Carpark.create!(user: user_1, average_rating: 5,  length: "500", width: "350", height:"250", latitude: "1.269837", longitude:"103.835959", rate_day:"30", photo:"https://source.unsplash.com/Tv1HyUpOpQE")
  Carpark.create!(user: user_1, average_rating: 3,  length: "500", width: "330", height:"200", latitude: "1.298691", longitude:"103.849134", rate_day:"10", photo:"https://source.unsplash.com/1c9x-qzzZRQ")
  Carpark.create!(user: user_1, average_rating: 4,  length: "500", width: "300", height:"200", latitude: "1.299495", longitude:"103.852117", rate_day:"20", photo:"https://source.unsplash.com/SEFu8HMjQPQ")
  Carpark.create!(user: user_1, average_rating: 5,  length: "500", width: "300", height:"300", latitude: "1.280734", longitude:"103.853792", rate_day:"20", photo:"https://source.unsplash.com/xwVaVuCz46M")
  Carpark.create!(user: user_1, average_rating: 4,  length: "550", width: "300", height:"200", latitude: "1.279670", longitude:"103.851125", rate_day:"15", photo:"https://source.unsplash.com/eUAiEZLhKG8")
  Carpark.create!(user: user_1, average_rating: 2,  length: "550", width: "330", height:"150", latitude: "1.277274", longitude:"103.854037", rate_day:"35", photo:"https://source.unsplash.com/x8gaz9cnsNg")
  Carpark.create!(user: user_1, average_rating: 5,  length: "550", width: "330", height:"250", latitude: "1.279787", longitude:"103.868607", rate_day:"30", photo:"https://source.unsplash.com/Ed1pUKH-zoQ") 

  