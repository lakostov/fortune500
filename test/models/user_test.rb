require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(username: "ExampleUser", email: "user@example.com", first_name: "John", last_name: "Smith" )
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "username should be present" do
    @user.username = "     "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end

  test "first_name should be present" do
    @user.first_name = "     "
    assert_not @user.valid?
  end

  test "last_name should be present" do
    @user.last_name = "     "
    assert_not @user.valid?
  end

  test "username should not be too long" do
    @user.username = "a" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "first_name should not be too long" do
    @user.first_name = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "last_name should not be too long" do
    @user.last_name = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "username validation should accept valid username" do
    valid_usernames = %w[user_example US-ER_foo A_US0ER1
                         firstuser user01 user_01 user-01]
    valid_usernames.each do |valid_username|
      @user.username = valid_username
      assert @user.valid?, "#{valid_username.inspect} should be valid"
    end
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "username addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.username = @user.username.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Foo@ExAMPle.CoM"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
  end

  test "username should be saved as lower-case" do
    mixed_case_username = "Foo-ExAMPle"
    @user.username = mixed_case_username
    @user.save
    assert_equal mixed_case_username.downcase, @user.reload.username
  end
end
