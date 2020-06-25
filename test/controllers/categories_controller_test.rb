require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @categories = categories(:one) 
  end

  test "should get index" do
    get categories_index_url
    assert_response :success
  end

  test "should create category" do
    assert_difference "Category.count" do
      post categories_path, params: {category: {name: 'Kitchen', description: 'utilities for the kitchen'} }      
    end

    assert_response :ok
  end

  # test "should create user" do
  #   assert_difference('User.count') do
  #     post api_v1_users_url, params: { user: { email:'test@test.org', password: '123456' } }, as: :json
  #   end
  # end


  # test "should not create user with taken email" do
  #   assert_no_difference('User.count') do
  #     post api_v1_users_url, params: { user: { email: @user.email, password: '123456' } }, as: :json
  #   end

  #   assert_response :unprocessable_entity
  # end

  # test "should update user" do
  #   patch api_v1_user_url(@user), params: { user: { email: @user.email, password: '123456' } }, as: :json
  #   assert_response :success
  # end
  
  # test "should not update user when invalid params are sent" do
  #   patch api_v1_user_url(@user), params: { user: { email:'bad_email', password: '123456' } }, as: :json
  #   assert_response :unprocessable_entity
  # end

  # test "should destroy user" do
  #   assert_difference('User.count', -1) do
  #     delete api_v1_user_url(@user), as: :json
  #   end
end
