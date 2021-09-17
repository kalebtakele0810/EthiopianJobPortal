require "test_helper"

class JobSearchTitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_search_title = job_search_titles(:one)
  end

  test "should get index" do
    get job_search_titles_url
    assert_response :success
  end

  test "should get new" do
    get new_job_search_title_url
    assert_response :success
  end

  test "should create job_search_title" do
    assert_difference('JobSearchTitle.count') do
      post job_search_titles_url, params: { job_search_title: { name: @job_search_title.name } }
    end

    assert_redirected_to job_search_title_url(JobSearchTitle.last)
  end

  test "should show job_search_title" do
    get job_search_title_url(@job_search_title)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_search_title_url(@job_search_title)
    assert_response :success
  end

  test "should update job_search_title" do
    patch job_search_title_url(@job_search_title), params: { job_search_title: { name: @job_search_title.name } }
    assert_redirected_to job_search_title_url(@job_search_title)
  end

  test "should destroy job_search_title" do
    assert_difference('JobSearchTitle.count', -1) do
      delete job_search_title_url(@job_search_title)
    end

    assert_redirected_to job_search_titles_url
  end
end
