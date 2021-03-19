require "test_helper"

class DriversandcarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @driversandcar = driversandcars(:one)
  end

  test "should get index" do
    get driversandcars_url
    assert_response :success
  end

  test "should get new" do
    get new_driversandcar_url
    assert_response :success
  end

  test "should create driversandcar" do
    assert_difference('Driversandcar.count') do
      post driversandcars_url, params: { driversandcar: {  } }
    end

    assert_redirected_to driversandcar_url(Driversandcar.last)
  end

  test "should show driversandcar" do
    get driversandcar_url(@driversandcar)
    assert_response :success
  end

  test "should get edit" do
    get edit_driversandcar_url(@driversandcar)
    assert_response :success
  end

  test "should update driversandcar" do
    patch driversandcar_url(@driversandcar), params: { driversandcar: {  } }
    assert_redirected_to driversandcar_url(@driversandcar)
  end

  test "should destroy driversandcar" do
    assert_difference('Driversandcar.count', -1) do
      delete driversandcar_url(@driversandcar)
    end

    assert_redirected_to driversandcars_url
  end
end
