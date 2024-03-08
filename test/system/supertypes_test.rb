require "application_system_test_case"

class SupertypesTest < ApplicationSystemTestCase
  setup do
    @supertype = supertypes(:one)
  end

  test "visiting the index" do
    visit supertypes_url
    assert_selector "h1", text: "Supertypes"
  end

  test "should create supertype" do
    visit supertypes_url
    click_on "New supertype"

    fill_in "Name", with: @supertype.name
    click_on "Create Supertype"

    assert_text "Supertype was successfully created"
    click_on "Back"
  end

  test "should update Supertype" do
    visit supertype_url(@supertype)
    click_on "Edit this supertype", match: :first

    fill_in "Name", with: @supertype.name
    click_on "Update Supertype"

    assert_text "Supertype was successfully updated"
    click_on "Back"
  end

  test "should destroy Supertype" do
    visit supertype_url(@supertype)
    click_on "Delete this supertype", match: :first

    assert_text "Supertype was successfully destroyed"
  end
end
