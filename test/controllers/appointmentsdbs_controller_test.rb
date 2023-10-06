require "test_helper"

class AppointmentsdbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appointmentsdb = appointmentsdbs(:one)
  end

  test "should get index" do
    get appointmentsdbs_url
    assert_response :success
  end

  test "should get new" do
    get new_appointmentsdb_url
    assert_response :success
  end

  test "should create appointmentsdb" do
    assert_difference("Appointmentsdb.count") do
      post appointmentsdbs_url, params: { appointmentsdb: { date: @appointmentsdb.date, email: @appointmentsdb.email, first_name: @appointmentsdb.first_name, last_name: @appointmentsdb.last_name, phone: @appointmentsdb.phone } }
    end

    assert_redirected_to appointmentsdb_url(Appointmentsdb.last)
  end

  test "should show appointmentsdb" do
    get appointmentsdb_url(@appointmentsdb)
    assert_response :success
  end

  test "should get edit" do
    get edit_appointmentsdb_url(@appointmentsdb)
    assert_response :success
  end

  test "should update appointmentsdb" do
    patch appointmentsdb_url(@appointmentsdb), params: { appointmentsdb: { date: @appointmentsdb.date, email: @appointmentsdb.email, first_name: @appointmentsdb.first_name, last_name: @appointmentsdb.last_name, phone: @appointmentsdb.phone } }
    assert_redirected_to appointmentsdb_url(@appointmentsdb)
  end

  test "should destroy appointmentsdb" do
    assert_difference("Appointmentsdb.count", -1) do
      delete appointmentsdb_url(@appointmentsdb)
    end

    assert_redirected_to appointmentsdbs_url
  end
end
