require "application_system_test_case"

class VehiclesTest < ApplicationSystemTestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "visiting the index" do
    visit vehicles_url
    assert_selector "h1", text: "Vehicles"
  end

  test "should create vehicle" do
    visit vehicles_url
    click_on "New vehicle"

    fill_in "Brand", with: @vehicle.brand
    fill_in "Model", with: @vehicle.model
    fill_in "Plate number", with: @vehicle.plate_number
    fill_in "Vehicle type", with: @vehicle.vehicle_type
    fill_in "Year", with: @vehicle.year
    click_on "Create Vehicle"

    assert_text "Vehicle was successfully created"
    click_on "Back"
  end

  test "should update Vehicle" do
    visit vehicle_url(@vehicle)
    click_on "Edit this vehicle", match: :first

    fill_in "Brand", with: @vehicle.brand
    fill_in "Model", with: @vehicle.model
    fill_in "Plate number", with: @vehicle.plate_number
    fill_in "Vehicle type", with: @vehicle.vehicle_type
    fill_in "Year", with: @vehicle.year
    click_on "Update Vehicle"

    assert_text "Vehicle was successfully updated"
    click_on "Back"
  end

  test "should destroy Vehicle" do
    visit vehicle_url(@vehicle)
    click_on "Destroy this vehicle", match: :first

    assert_text "Vehicle was successfully destroyed"
  end
end
