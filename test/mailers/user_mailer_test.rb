#This file uses code from Michael Hartl, Ruby on Rails Tutorial, Available at: https://www.railstutorial.org/book
require 'test_helper'

class UserMailerTest < ActionMailer::TestCase

  test "account_activation" do
    user = users(:jack)
   user.activation_token = User.new_token
   mail = UserMailer.account_activation(user)
   assert_equal "Account activation", mail.subject
   assert_equal [user.email], mail.to
   assert_equal ["from@fortune500.herokuapp.com"], mail.from
   assert_match user.username, mail.body.encoded
   assert_match user.activation_token, mail.body.encoded
   assert_match CGI.escape(user.email), mail.body.encoded
 end

 test "password_reset" do
    user = users(:jack)
    user.reset_token = User.new_token
    mail = UserMailer.password_reset(user)
    assert_equal "Password reset", mail.subject
    assert_equal [user.email], mail.to
    assert_equal ["from@fortune500.herokuapp.com"], mail.from
    assert_match user.reset_token,        mail.body.encoded
    assert_match CGI.escape(user.email),  mail.body.encoded
  end
end
