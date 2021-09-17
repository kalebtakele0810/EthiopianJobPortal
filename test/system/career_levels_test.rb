require "application_system_test_case"

class CareerLevelsTest < ApplicationSystemTestCase
  setup do
    @career_level = career_levels(:one)
  end

  test "visiting the index" do
    visit career_levels_url
    assert_selector "h1", text: "Career Levels"
  end

  test "creating a Career level" do
    visit career_levels_url
    click_on "New Career Level"

    fill_in "Name", with: @career_level.name
    click_on "Create Career level"

    assert_text "Career level was successfully created"
    click_on "Back"
  end

  test "updating a Career level" do
    visit career_levels_url
    click_on "Edit", match: :first

    fill_in "Name", with: @career_level.name
    click_on "Update Career level"

    assert_text "Career level was successfully updated"
    click_on "Back"
  end

  test "destroying a Career level" do
    visit career_levels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Career level was successfully destroyed"
  end
end
