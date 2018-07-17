require 'test_helper'

class EndingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ending = endings(:one)
  end

  test "should get index" do
    get endings_url
    assert_response :success
  end

  test "should get new" do
    get new_ending_url
    assert_response :success
  end

  test "should create ending" do
    assert_difference('Ending.count') do
      post endings_url, params: { ending: { ano: @ending.ano, semestre: @ending.semestre, student_id: @ending.student_id } }
    end

    assert_redirected_to ending_url(Ending.last)
  end

  test "should show ending" do
    get ending_url(@ending)
    assert_response :success
  end

  test "should get edit" do
    get edit_ending_url(@ending)
    assert_response :success
  end

  test "should update ending" do
    patch ending_url(@ending), params: { ending: { ano: @ending.ano, semestre: @ending.semestre, student_id: @ending.student_id } }
    assert_redirected_to ending_url(@ending)
  end

  test "should destroy ending" do
    assert_difference('Ending.count', -1) do
      delete ending_url(@ending)
    end

    assert_redirected_to endings_url
  end
end
