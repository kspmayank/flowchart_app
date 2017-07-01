require 'test_helper'

class FlowchartEditsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flowchart_edit = flowchart_edits(:one)
  end

  test "should get index" do
    get flowchart_edits_url
    assert_response :success
  end

  test "should get new" do
    get new_flowchart_edit_url
    assert_response :success
  end

  test "should create flowchart_edit" do
    assert_difference('FlowchartEdit.count') do
      post flowchart_edits_url, params: { flowchart_edit: { approved: @flowchart_edit.approved, content: @flowchart_edit.content, flowcharts_id: @flowchart_edit.flowcharts_id, name: @flowchart_edit.name, zoomlvl: @flowchart_edit.zoomlvl } }
    end

    assert_redirected_to flowchart_edit_url(FlowchartEdit.last)
  end

  test "should show flowchart_edit" do
    get flowchart_edit_url(@flowchart_edit)
    assert_response :success
  end

  test "should get edit" do
    get edit_flowchart_edit_url(@flowchart_edit)
    assert_response :success
  end

  test "should update flowchart_edit" do
    patch flowchart_edit_url(@flowchart_edit), params: { flowchart_edit: { approved: @flowchart_edit.approved, content: @flowchart_edit.content, flowcharts_id: @flowchart_edit.flowcharts_id, name: @flowchart_edit.name, zoomlvl: @flowchart_edit.zoomlvl } }
    assert_redirected_to flowchart_edit_url(@flowchart_edit)
  end

  test "should destroy flowchart_edit" do
    assert_difference('FlowchartEdit.count', -1) do
      delete flowchart_edit_url(@flowchart_edit)
    end

    assert_redirected_to flowchart_edits_url
  end
end
