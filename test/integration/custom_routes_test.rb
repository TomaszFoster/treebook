require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /login route opens login page" do 
  	get '/login'
  	assert_response :success 
  end

  test "that /logout route opens login page" do 
  	get '/logout'
  	assert_response :redirect
  	assert_redirected_to '/'
  end

  test "that the register page works" do
  	get '/register'
  	assert_response :success
  end

  test "that a profile page works" do
    get '/jasonseifer'
    assert_response :success
  end
end
