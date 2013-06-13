require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /login route opens login page" do 
  	get '/login'
  	assert_response :success 
  end

  test "that /logout route opens login page" do 
  	get '/logout'
  	assert_response :redirect
  	asser_redirected_to '/'
  end
end
