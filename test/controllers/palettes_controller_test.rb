require "test_helper"

class PalettesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @palette = palettes(:one)
  end

  test "should get index" do
    get palettes_url, as: :json
    assert_response :success
  end

  test "should create palette" do
    assert_difference('Palette.count') do
      post palettes_url, params: { palette: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show palette" do
    get palette_url(@palette), as: :json
    assert_response :success
  end

  test "should update palette" do
    patch palette_url(@palette), params: { palette: {  } }, as: :json
    assert_response 200
  end

  test "should destroy palette" do
    assert_difference('Palette.count', -1) do
      delete palette_url(@palette), as: :json
    end

    assert_response 204
  end
end
