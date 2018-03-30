#This file uses code from Michael Hartl, Ruby on Rails Tutorial, Available at: https://www.railstutorial.org/book
require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:jack)
  end

  test "unsuccessful edit" do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), params: { user: { username:  "",
                                              first_name: "",
                                              last_name: "",
                                              email: "foo@invalid",
                                              password:              "foo",
                                              password_confirmation: "bar" } }

    assert_template 'users/edit'
  end

  test "successful edit" do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'
    username  = "FooBar"
    first_name = "Foo"
    last_name = "Bar"
    email = "foo@bar.com"
    patch user_path(@user), params: { user: { username:  username,
                                              first_name: first_name,
                                              last_name: last_name,
                                              email: email,
                                              password:              "",
                                              password_confirmation: "" } }
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal username.downcase,  @user.username
    assert_equal first_name,  @user.first_name
    assert_equal last_name,  @user.last_name
    assert_equal email.downcase, @user.email
  end
end
