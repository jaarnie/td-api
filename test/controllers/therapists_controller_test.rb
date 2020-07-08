require 'test_helper'

class TherapistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @therapist = therapists(:one)
  end

  test "should get index" do
    get therapists_url, as: :json
    assert_response :success
  end

  test "should create therapist" do
    assert_difference('Therapist.count') do
      post therapists_url, params: { therapist: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show therapist" do
    get therapist_url(@therapist), as: :json
    assert_response :success
  end

  test "should update therapist" do
    patch therapist_url(@therapist), params: { therapist: {  } }, as: :json
    assert_response 200
  end

  test "should destroy therapist" do
    assert_difference('Therapist.count', -1) do
      delete therapist_url(@therapist), as: :json
    end

    assert_response 204
  end
end
