Factory.define :user do |user|
  user.first_name 'Jack'
  user.last_name 'Daniels'
  user.sequence(:email){ |n| "user#{n}@mail.com" }
  user.password 'password'
  user.password_confirmation 'password'
end
