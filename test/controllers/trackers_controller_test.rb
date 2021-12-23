require "test_helper"

class TrackersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tracker = trackers(:one)
  end

  test "should get index" do
    get trackers_url, as: :json
    assert_response :success
  end

  test "should create tracker" do
    assert_difference('Tracker.count') do
      post trackers_url, params: { tracker: { cost: @tracker.cost, description: @tracker.description, name: @tracker.name } }, as: :json
    end

    assert_response 201
  end

  test "should show tracker" do
    get tracker_url(@tracker), as: :json
    assert_response :success
  end

  test "should update tracker" do
    patch tracker_url(@tracker), params: { tracker: { cost: @tracker.cost, description: @tracker.description, name: @tracker.name } }, as: :json
    assert_response 200
  end

  test "should destroy tracker" do
    assert_difference('Tracker.count', -1) do
      delete tracker_url(@tracker), as: :json
    end

    assert_response 204
  end
end
