require "application_system_test_case"

class ResourcesTest < ApplicationSystemTestCase
  setup do
    @resource = resources(:one)
  end

  test "visiting the index" do
    visit resources_url
    assert_selector "h1", text: "Resources"
  end

  test "should create resource" do
    visit resources_url
    click_on "New resource"

    fill_in "Name", with: @resource.name
    fill_in "Type", with: @resource.type_id
    click_on "Create Resource"

    assert_text "Resource was successfully created"
    click_on "Back"
  end

  test "should update Resource" do
    visit resource_url(@resource)
    click_on "Edit this resource", match: :first

    fill_in "Name", with: @resource.name
    fill_in "Type", with: @resource.type_id
    click_on "Update Resource"

    assert_text "Resource was successfully updated"
    click_on "Back"
  end

  test "should destroy Resource" do
    visit resource_url(@resource)
    click_on "Delete this resource", match: :first

    assert_text "Resource was successfully destroyed"
  end
end
