require 'test_helper'

class PenaltyEntriesControllerTest < ActionController::TestCase
  setup do
    @penalty_entry = penalty_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:penalty_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create penalty_entry" do
    assert_difference('PenaltyEntry.count') do
      post :create, penalty_entry: { date: @penalty_entry.date, penalty_id: @penalty_entry.penalty_id, user_id: @penalty_entry.user_id }
    end

    assert_redirected_to penalty_entry_path(assigns(:penalty_entry))
  end

  test "should show penalty_entry" do
    get :show, id: @penalty_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @penalty_entry
    assert_response :success
  end

  test "should update penalty_entry" do
    patch :update, id: @penalty_entry, penalty_entry: { date: @penalty_entry.date, penalty_id: @penalty_entry.penalty_id, user_id: @penalty_entry.user_id }
    assert_redirected_to penalty_entry_path(assigns(:penalty_entry))
  end

  test "should destroy penalty_entry" do
    assert_difference('PenaltyEntry.count', -1) do
      delete :destroy, id: @penalty_entry
    end

    assert_redirected_to penalty_entries_path
  end
end
