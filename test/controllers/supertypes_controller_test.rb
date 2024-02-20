require "test_helper"

class SupertypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supertype = supertypes(:one)
  end

  test "should get index" do
    get supertypes_url
    assert_response :success
  end

  test "should get new" do
    get new_supertype_url
    assert_response :success
  end

  test "should create supertype" do
    assert_difference("Supertype.count") do
      post supertypes_url, params: { supertype: { name: @supertype.name } }
    end

    assert_redirected_to supertype_url(Supertype.last)
  end

  test "should show supertype" do
    get supertype_url(@supertype)
    assert_response :success
  end

  test "should get edit" do
    get edit_supertype_url(@supertype)
    assert_response :success
  end

  test "should update supertype" do
    patch supertype_url(@supertype), params: { supertype: { name: @supertype.name } }
    assert_redirected_to supertype_url(@supertype)
  end

  test "should destroy supertype" do
    assert_difference("Supertype.count", -1) do
      delete supertype_url(@supertype)
    end

    assert_redirected_to supertypes_url
  end
end
