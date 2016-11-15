User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "password",
             password_confirmation: "password",
             admin: 					true)

Category.create!(name: "Apparel & Fashion")
Category.create!(name: "Agriculture")
Category.create!(name: "Automobile")
Category.create!(name: "Computer Hardware & Software")
Category.create!(name: "Consumer Electronics")
Category.create!(name: "Mobile Phones")
Category.create!(name: "Electronics & Electrical Supplies")
Category.create!(name: "Energy & Power")
Category.create!(name: "Food & Beverage")
Category.create!(name: "Construction & Real Estate")
Category.create!(name: "Chemicals")
Category.create!(name: "Leather & Leather products")
Category.create!(name: "Business Services")
Category.create!(name: "Home Textiles & Furnishings")
Category.create!(name: "Textile & Fabrics")
Category.create!(name: "Minerals & Metals")
Category.create!(name: "Industrial Supplies")
Category.create!(name: "Health & Beauty")

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content, category_id: 2, buysell: "Buy", title: "The title will come over here",
   contact_detail: "njha1987@gmail.com" ) }
end