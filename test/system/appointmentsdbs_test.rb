require "application_system_test_case"

class AppointmentsdbsTest < ApplicationSystemTestCase
  setup do
    @appointmentsdb = appointmentsdbs(:one)
  end

  test "visiting the index" do
    visit appointmentsdbs_url
    assert_selector "h1", text: "Appointmentsdbs"
  end

  test "should create appointmentsdb" do
    visit appointmentsdbs_url
    click_on "New appointmentsdb"

    fill_in "Date", with: @appointmentsdb.date
    fill_in "Email", with: @appointmentsdb.email
    fill_in "First name", with: @appointmentsdb.first_name
    fill_in "Last name", with: @appointmentsdb.last_name
    fill_in "Phone", with: @appointmentsdb.phone
    click_on "Create Appointmentsdb"

    assert_text "Appointmentsdb was successfully created"
    click_on "Back"
  end

  test "should update Appointmentsdb" do
    visit appointmentsdb_url(@appointmentsdb)
    click_on "Edit this appointmentsdb", match: :first

    fill_in "Date", with: @appointmentsdb.date
    fill_in "Email", with: @appointmentsdb.email
    fill_in "First name", with: @appointmentsdb.first_name
    fill_in "Last name", with: @appointmentsdb.last_name
    fill_in "Phone", with: @appointmentsdb.phone
    click_on "Update Appointmentsdb"

    assert_text "Appointmentsdb was successfully updated"
    click_on "Back"
  end

  test "should destroy Appointmentsdb" do
    visit appointmentsdb_url(@appointmentsdb)
    click_on "Destroy this appointmentsdb", match: :first

    assert_text "Appointmentsdb was successfully destroyed"
  end
end
