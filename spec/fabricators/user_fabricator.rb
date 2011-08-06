Fabricator(:user) do
  first_name 'Jack'
  last_name 'Daniels'
  email { sequence(:email) { |i| "user#{i}@mail.com" } }
  password 'password'
  password_confirmation 'password'
end
