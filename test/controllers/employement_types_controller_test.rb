require "test_helper"

class EmployementTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employement_type = employement_types(:one)
  end

  test "should get index" do
    get employement_types_url
    assert_response :success
  end

  test "should get new" do
    get new_employement_type_url
    assert_response :success
  end

  test "should create employement_type" do
    assert_difference('EmployementType.count') do
      post employement_types_url, params: { employement_type: { name: @employement_type.name } }
    end

    assert_redirected_to employement_type_url(EmployementType.last)
  end

  test "should show employement_type" do
    get employement_type_url(@employement_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_employement_type_url(@employement_type)
    assert_response :success
  end

  test "should update employement_type" do
    patch employement_type_url(@employement_type), params: { employement_type: { name: @employement_type.name } }
    assert_redirected_to employement_type_url(@employement_type)
  end

  test "should destroy employement_type" do
    assert_difference('EmployementType.count', -1) do
      delete employement_type_url(@employement_type)
    end

    assert_redirected_to employement_types_url
  end
end
