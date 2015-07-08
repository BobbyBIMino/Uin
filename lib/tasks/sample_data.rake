namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    require 'faker'

    99.times do |n|
      name  = Faker::Name.name
      user_id = Faker::PhoneNumber.phone_number
      sex = "Girl"
      password = "password"
      age = 20
      school = "seu"
      User.create!(name: name,
                   user_id: user_id,
				   sex: sex,
				   password: password,
				   school: school,
				   age: age,
                   )
    end

    users = User.all
    50.times do
      order_number = Faker::PhoneNumber.phone_number
      price = 0.5
      order_state = "Paid"
      users.each { |user| user.orders.create!(order_number: order_number,
      											price: price,
      											order_state: order_state
      																) }
    end
  end
end