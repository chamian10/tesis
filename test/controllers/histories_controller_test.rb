require 'test_helper'

class HistoriesControllerTest < ActionController::TestCase
  setup do
    @history = histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create history" do
    assert_difference('History.count') do
      post :create, history: { activity: @history.activity, circumference: @history.circumference, current_weight: @history.current_weight, customary_weight: @history.customary_weight, degree_of_stress: @history.degree_of_stress, height: @history.height, nutrition_diagnosis: @history.nutrition_diagnosis, observation: @history.observation, pathology: @history.pathology, patient_id: @history.patient_id }
    end

    assert_redirected_to history_path(assigns(:history))
  end

  test "should show history" do
    get :show, id: @history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @history
    assert_response :success
  end

  test "should update history" do
    patch :update, id: @history, history: { activity: @history.activity, circumference: @history.circumference, current_weight: @history.current_weight, customary_weight: @history.customary_weight, degree_of_stress: @history.degree_of_stress, height: @history.height, nutrition_diagnosis: @history.nutrition_diagnosis, observation: @history.observation, pathology: @history.pathology, patient_id: @history.patient_id }
    assert_redirected_to history_path(assigns(:history))
  end

  test "should destroy history" do
    assert_difference('History.count', -1) do
      delete :destroy, id: @history
    end

    assert_redirected_to histories_path
  end
end
