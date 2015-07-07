namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    require 'faker'

    99.times do |n|
      name  = Faker::Name.name
      user_id = "example-#{n+1}@railstutorial.org"
      sex = "Girl"
      remember_token = "aaaa"
      password = "password"
      age = 20
      school = "seu"
      User.create!(name: name,
                   user_id: user_id,
				   sex: sex,
				   remember_token: remember_token,
				   password: password,
				   school: school,
				   age: age,
                   )
    end

    users = User.all
    50.times do
      order_number = 123;
      users.each { |user| user.orders.create!(order_number: order_number) }
    end
  end
end