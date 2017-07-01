require 'test_helper'

class FlowchartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flowchart = flowcharts(:one)
  end

  test "should get index" do
    get flowcharts_url
    assert_response :success
  end

  test "should get new" do
    get new_flowchart_url
    assert_response :success
  end

  test "should create flowchart" do
    assert_difference('Flowchart.count') do
      post flowcharts_url, params: { flowchart: { approved: @flowchart.approved, content: @flowchart.content, name: @flowchart.name, zoomlvl: @flowchart.zoomlvl } }
    end

    assert_redirected_to flowchart_url(Flowchart.last)
  end

  test "should show flowchart" do
    get flowchart_url(@flowchart)
    assert_response :success
  end

  test "should get edit" do
    get edit_flowchart_url(@flowchart)
    assert_response :success
  end

  test "should update flowchart" do
    patch flowchart_url(@flowchart), params: { flowchart: { approved: @flowchart.approved, content: @flowchart.content, name: @flowchart.name, zoomlvl: @flowchart.zoomlvl } }
    assert_redirected_to flowchart_url(@flowchart)
  end

  test "should destroy flowchart" do
    assert_difference('Flowchart.count', -1) do
      delete flowchart_url(@flowchart)
    end

    assert_redirected_to flowcharts_url
  end
end
