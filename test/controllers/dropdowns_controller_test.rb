require 'test_helper'

class DropdownsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dropdown = dropdowns(:one)
  end

  test "should get index" do
    get dropdowns_url
    assert_response :success
  end

  test "should get new" do
    get new_dropdown_url
    assert_response :success
  end

  test "should create dropdown" do
    assert_difference('Dropdown.count') do
      post dropdowns_url, params: { dropdown: { approved: @dropdown.approved, content: @dropdown.content, name: @dropdown.name, zoomlvl: @dropdown.zoomlvl } }
    end

    assert_redirected_to dropdown_url(Dropdown.last)
  end

  test "should show dropdown" do
    get dropdown_url(@dropdown)
    assert_response :success
  end

  test "should get edit" do
    get edit_dropdown_url(@dropdown)
    assert_response :success
  end

  test "should update dropdown" do
    patch dropdown_url(@dropdown), params: { dropdown: { approved: @dropdown.approved, content: @dropdown.content, name: @dropdown.name, zoomlvl: @dropdown.zoomlvl } }
    assert_redirected_to dropdown_url(@dropdown)
  end

  test "should destroy dropdown" do
    assert_difference('Dropdown.count', -1) do
      delete dropdown_url(@dropdown)
    end

    assert_redirected_to dropdowns_url
  end
end
