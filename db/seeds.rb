# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  User.create!(email: "hello@gmail.com", password: "password") 
  

  Carpark.create!(average_rating: 5,  length: "500", width: "300", height:"300", latitude: "1.317815", longitude:"103.858230", rate_hour:"3", photo:"https://unsplash.com/photos/XlydZHgSQOs")
  Carpark.create!(average_rating: 4,  length: "500", width: "300", height:"200", latitude: "1.356573", longitude:"103.973039", rate_hour:"1", photo:"https://unsplash.com/photos/JKZkFk8WnrI")  
  Carpark.create!(average_rating: 5,  length: "500", width: "350", height:"200", latitude: "1.278443", longitude:"103.865582", rate_hour:"2", photo:"hhttps://unsplash.com/photos/_rxObsjG8G0")
  Carpark.create!(average_rating: 5,  length: "500", width: "350", height:"250", latitude: "1.269837", longitude:"103.835959", rate_hour:"3", photo:"https://unsplash.com/photos/Tv1HyUpOpQE")
  Carpark.create!(average_rating: 3,  length: "500", width: "330", height:"200", latitude: "1.298691", longitude:"103.849134", rate_hour:"1", photo:"https://unsplash.com/photos/1c9x-qzzZRQ")
  Carpark.create!(average_rating: 4,  length: "500", width: "300", height:"200", latitude: "1.299495", longitude:"103.852117", rate_hour:"2", photo:"https://unsplash.com/photos/SEFu8HMjQPQ")
  Carpark.create!(average_rating: 5,  length: "500", width: "300", height:"300", latitude: "1.280734", longitude:"103.853792", rate_hour:"2", photo:"https://unsplash.com/photos/xwVaVuCz46M")
  Carpark.create!(average_rating: 4,  length: "550", width: "300", height:"200", latitude: "1.279670", longitude:"103.851125", rate_hour:"1", photo:"https://unsplash.com/photos/eUAiEZLhKG8")
  Carpark.create!(average_rating: 2,  length: "550", width: "330", height:"150", latitude: "1.277274", longitude:"103.854037", rate_hour:"5", photo:"https://unsplash.com/photos/x8gaz9cnsNg")
  Carpark.create!(average_rating: 5,  length: "550", width: "330", height:"250", latitude: "1.279787", longitude:"103.868607", rate_hour:"4", photo:"https://unsplash.com/photos/Ed1pUKH-zoQ") 

  