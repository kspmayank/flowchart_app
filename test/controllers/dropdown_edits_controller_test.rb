require 'test_helper'

class DropdownEditsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dropdown_edit = dropdown_edits(:one)
  end

  test "should get index" do
    get dropdown_edits_url
    assert_response :success
  end

  test "should get new" do
    get new_dropdown_edit_url
    assert_response :success
  end

  test "should create dropdown_edit" do
    assert_difference('DropdownEdit.count') do
      post dropdown_edits_url, params: { dropdown_edit: { approved: @dropdown_edit.approved, content: @dropdown_edit.content, dropdowns_id: @dropdown_edit.dropdowns_id, name: @dropdown_edit.name, zoomlvl: @dropdown_edit.zoomlvl } }
    end

    assert_redirected_to dropdown_edit_url(DropdownEdit.last)
  end

  test "should show dropdown_edit" do
    get dropdown_edit_url(@dropdown_edit)
    assert_response :success
  end

  test "should get edit" do
    get edit_dropdown_edit_url(@dropdown_edit)
    assert_response :success
  end

  test "should update dropdown_edit" do
    patch dropdown_edit_url(@dropdown_edit), params: { dropdown_edit: { approved: @dropdown_edit.approved, content: @dropdown_edit.content, dropdowns_id: @dropdown_edit.dropdowns_id, name: @dropdown_edit.name, zoomlvl: @dropdown_edit.zoomlvl } }
    assert_redirected_to dropdown_edit_url(@dropdown_edit)
  end

  test "should destroy dropdown_edit" do
    assert_difference('DropdownEdit.count', -1) do
      delete dropdown_edit_url(@dropdown_edit)
    end

    assert_redirected_to dropdown_edits_url
  end
end
