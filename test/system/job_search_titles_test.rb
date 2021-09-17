require "application_system_test_case"

class JobSearchTitlesTest < ApplicationSystemTestCase
  setup do
    @job_search_title = job_search_titles(:one)
  end

  test "visiting the index" do
    visit job_search_titles_url
    assert_selector "h1", text: "Job Search Titles"
  end

  test "creating a Job search title" do
    visit job_search_titles_url
    click_on "New Job Search Title"

    fill_in "Name", with: @job_search_title.name
    click_on "Create Job search title"

    assert_text "Job search title was successfully created"
    click_on "Back"
  end

  test "updating a Job search title" do
    visit job_search_titles_url
    click_on "Edit", match: :first

    fill_in "Name", with: @job_search_title.name
    click_on "Update Job search title"

    assert_text "Job search title was successfully updated"
    click_on "Back"
  end

  test "destroying a Job search title" do
    visit job_search_titles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job search title was successfully destroyed"
  end
end
