# coding: utf-8

require 'test_helper'

class UserTest < ActiveSupport::TestCase  
  test "the truth" do
    a = 1
    assert a == 2, "a is not 2"
  end

  test "factory girl" do
    user = Factory(:user)
    assert_equal "test_name", user.name
    assert_equal "test_pass", user.password
  end

#  test "authenticate" do
#    user = Factory(:user, name: "testuser",
#                password: "testuser", password_confirmation: "testuser")
#    assert_nil User.authenticate("testuser", "testuser")
#    assert_equal user, User.authenticate("testuser", "testuser")
#  end
end
