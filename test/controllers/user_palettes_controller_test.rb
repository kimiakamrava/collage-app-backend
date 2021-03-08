require "test_helper"

class UserPalettesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_palette = user_palettes(:one)
  end

  test "should get index" do
    get user_palettes_url, as: :json
    assert_response :success
  end

  test "should create user_palette" do
    assert_difference('UserPalette.count') do
      post user_palettes_url, params: { user_palette: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show user_palette" do
    get user_palette_url(@user_palette), as: :json
    assert_response :success
  end

  test "should update user_palette" do
    patch user_palette_url(@user_palette), params: { user_palette: {  } }, as: :json
    assert_response 200
  end

  test "should destroy user_palette" do
    assert_difference('UserPalette.count', -1) do
      delete user_palette_url(@user_palette), as: :json
    end

    assert_response 204
  end
end
