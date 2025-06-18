require "test_helper"

class SpeedRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speed_record = speed_records(:one)
  end

  test "should get index" do
    get speed_records_url
    assert_response :success
  end

  test "should get new" do
    get new_speed_record_url
    assert_response :success
  end

  test "should create speed_record" do
    assert_difference("SpeedRecord.count") do
      post speed_records_url, params: { speed_record: { direction: @speed_record.direction, location: @speed_record.location, notes: @speed_record.notes, recorded_at: @speed_record.recorded_at, speed: @speed_record.speed, vehicle_id: @speed_record.vehicle_id, weather_conditions: @speed_record.weather_conditions } }
    end

    assert_redirected_to speed_record_url(SpeedRecord.last)
  end

  test "should show speed_record" do
    get speed_record_url(@speed_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_speed_record_url(@speed_record)
    assert_response :success
  end

  test "should update speed_record" do
    patch speed_record_url(@speed_record), params: { speed_record: { direction: @speed_record.direction, location: @speed_record.location, notes: @speed_record.notes, recorded_at: @speed_record.recorded_at, speed: @speed_record.speed, vehicle_id: @speed_record.vehicle_id, weather_conditions: @speed_record.weather_conditions } }
    assert_redirected_to speed_record_url(@speed_record)
  end

  test "should destroy speed_record" do
    assert_difference("SpeedRecord.count", -1) do
      delete speed_record_url(@speed_record)
    end

    assert_redirected_to speed_records_url
  end
end
