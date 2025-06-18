require "application_system_test_case"

class SpeedRecordsTest < ApplicationSystemTestCase
  setup do
    @speed_record = speed_records(:one)
  end

  test "visiting the index" do
    visit speed_records_url
    assert_selector "h1", text: "Speed records"
  end

  test "should create speed record" do
    visit speed_records_url
    click_on "New speed record"

    fill_in "Direction", with: @speed_record.direction
    fill_in "Location", with: @speed_record.location
    fill_in "Notes", with: @speed_record.notes
    fill_in "Recorded at", with: @speed_record.recorded_at
    fill_in "Speed", with: @speed_record.speed
    fill_in "Vehicle", with: @speed_record.vehicle_id
    fill_in "Weather conditions", with: @speed_record.weather_conditions
    click_on "Create Speed record"

    assert_text "Speed record was successfully created"
    click_on "Back"
  end

  test "should update Speed record" do
    visit speed_record_url(@speed_record)
    click_on "Edit this speed record", match: :first

    fill_in "Direction", with: @speed_record.direction
    fill_in "Location", with: @speed_record.location
    fill_in "Notes", with: @speed_record.notes
    fill_in "Recorded at", with: @speed_record.recorded_at.to_s
    fill_in "Speed", with: @speed_record.speed
    fill_in "Vehicle", with: @speed_record.vehicle_id
    fill_in "Weather conditions", with: @speed_record.weather_conditions
    click_on "Update Speed record"

    assert_text "Speed record was successfully updated"
    click_on "Back"
  end

  test "should destroy Speed record" do
    visit speed_record_url(@speed_record)
    click_on "Destroy this speed record", match: :first

    assert_text "Speed record was successfully destroyed"
  end
end
