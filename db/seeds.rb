puts 'Seeding users...'
User.create!(first_name: 'Tom', last_name: 'Jones', email: 'demo@mail.com', password: 'password', password_confirmation: 'password') unless User.find_by_email('demo@mail.com')
puts 'Done seeding users.'
