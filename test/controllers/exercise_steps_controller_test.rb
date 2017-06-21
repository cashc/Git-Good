require 'test_helper'

class ExerciseStepsControllerTest < ActionController::TestCase
  setup do
    @exercise_step = exercise_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercise_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise_step" do
    assert_difference('ExerciseStep.count') do
      post :create, exercise_step: { exercise_id: @exercise_step.exercise_id, step_id: @exercise_step.step_id }
    end

    assert_redirected_to exercise_step_path(assigns(:exercise_step))
  end

  test "should show exercise_step" do
    get :show, id: @exercise_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercise_step
    assert_response :success
  end

  test "should update exercise_step" do
    patch :update, id: @exercise_step, exercise_step: { exercise_id: @exercise_step.exercise_id, step_id: @exercise_step.step_id }
    assert_redirected_to exercise_step_path(assigns(:exercise_step))
  end

  test "should destroy exercise_step" do
    assert_difference('ExerciseStep.count', -1) do
      delete :destroy, id: @exercise_step
    end

    assert_redirected_to exercise_steps_path
  end
end
