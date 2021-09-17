require "application_system_test_case"

class JobCategoriesTest < ApplicationSystemTestCase
  setup do
    @job_category = job_categories(:one)
  end

  test "visiting the index" do
    visit job_categories_url
    assert_selector "h1", text: "Job Categories"
  end

  test "creating a Job category" do
    visit job_categories_url
    click_on "New Job Category"

    fill_in "Name", with: @job_category.name
    click_on "Create Job category"

    assert_text "Job category was successfully created"
    click_on "Back"
  end

  test "updating a Job category" do
    visit job_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @job_category.name
    click_on "Update Job category"

    assert_text "Job category was successfully updated"
    click_on "Back"
  end

  test "destroying a Job category" do
    visit job_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job category was successfully destroyed"
  end
end
