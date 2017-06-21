require 'test_helper'

class StepCommandsControllerTest < ActionController::TestCase
  setup do
    @step_command = step_commands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:step_commands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create step_command" do
    assert_difference('StepCommand.count') do
      post :create, step_command: { command_id: @step_command.command_id, step_id: @step_command.step_id }
    end

    assert_redirected_to step_command_path(assigns(:step_command))
  end

  test "should show step_command" do
    get :show, id: @step_command
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @step_command
    assert_response :success
  end

  test "should update step_command" do
    patch :update, id: @step_command, step_command: { command_id: @step_command.command_id, step_id: @step_command.step_id }
    assert_redirected_to step_command_path(assigns(:step_command))
  end

  test "should destroy step_command" do
    assert_difference('StepCommand.count', -1) do
      delete :destroy, id: @step_command
    end

    assert_redirected_to step_commands_path
  end
end
