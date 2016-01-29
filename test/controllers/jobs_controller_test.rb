require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { address: @job.address, city: @job.city, company_name: @job.company_name, content_id: @job.content_id, country: @job.country, description: @job.description, end_date: @job.end_date, host_id: @job.host_id, images: @job.images, job_name: @job.job_name, start_date: @job.start_date, type: @job.type, user_id: @job.user_id }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    patch :update, id: @job, job: { address: @job.address, city: @job.city, company_name: @job.company_name, content_id: @job.content_id, country: @job.country, description: @job.description, end_date: @job.end_date, host_id: @job.host_id, images: @job.images, job_name: @job.job_name, start_date: @job.start_date, type: @job.type, user_id: @job.user_id }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
