require 'test_helper'

class FavoriteControllerTest < ActionDispatch::IntegrationTest
  test "should get user_id:integer" do
    get favorite_user_id:integer_url
    assert_response :success
  end

  test "should get product_id:integer" do
    get favorite_product_id:integer_url
    assert_response :success
  end

end
