require "test_helper"

class CareerLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @career_level = career_levels(:one)
  end

  test "should get index" do
    get career_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_career_level_url
    assert_response :success
  end

  test "should create career_level" do
    assert_difference('CareerLevel.count') do
      post career_levels_url, params: { career_level: { name: @career_level.name } }
    end

    assert_redirected_to career_level_url(CareerLevel.last)
  end

  test "should show career_level" do
    get career_level_url(@career_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_career_level_url(@career_level)
    assert_response :success
  end

  test "should update career_level" do
    patch career_level_url(@career_level), params: { career_level: { name: @career_level.name } }
    assert_redirected_to career_level_url(@career_level)
  end

  test "should destroy career_level" do
    assert_difference('CareerLevel.count', -1) do
      delete career_level_url(@career_level)
    end

    assert_redirected_to career_levels_url
  end
end
