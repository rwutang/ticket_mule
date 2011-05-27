Given /^I (?:am signed|sign) in as an? (\w+)$/ do |role|
  @me = Factory(:user)
  Given 'I am signed in'
end

Given 'I am signed in' do
  When %(I go to the sign in page)
  When %(I fill in "user_email" with "#{@me.email}")
  When %(I fill in "user_password" with "#{@me.password}")
  When %(I press "Sign in")
end
