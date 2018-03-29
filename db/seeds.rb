User.create!(username:  "admin",
             email: "admin@fortune500app.com",
             first_name: "Lachezar",
             last_name: "Kostov",
             password:              "password",
             password_confirmation: "password",
             admin: true,
             activated: true,
            activated_at: Time.zone.now)
99.times do |n|
  username  = "User#{n+1}"
  email = "user-#{n+1}@fortune500app.com"
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  password = "123456"
  User.create!(username:  username,
               email: email,
               first_name: first_name,
               last_name: last_name,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end
