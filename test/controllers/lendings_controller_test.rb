require 'test_helper'

class LendingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lending = lendings(:one)
  end

  test "should get index" do
    get lendings_url
    assert_response :success
  end

  test "should get new" do
    get new_lending_url
    assert_response :success
  end

  test "should create lending" do
    assert_difference('Lending.count') do
      post lendings_url, params: { lending: { appointment_date: @lending.appointment_date, book_id: @lending.book_id, borrow_date: @lending.borrow_date, description: @lending.description, pay_date: @lending.pay_date, reader_id: @lending.reader_id } }
    end

    assert_redirected_to lending_url(Lending.last)
  end

  test "should show lending" do
    get lending_url(@lending)
    assert_response :success
  end

  test "should get edit" do
    get edit_lending_url(@lending)
    assert_response :success
  end

  test "should update lending" do
    patch lending_url(@lending), params: { lending: { appointment_date: @lending.appointment_date, book_id: @lending.book_id, borrow_date: @lending.borrow_date, description: @lending.description, pay_date: @lending.pay_date, reader_id: @lending.reader_id } }
    assert_redirected_to lending_url(@lending)
  end

  test "should destroy lending" do
    assert_difference('Lending.count', -1) do
      delete lending_url(@lending)
    end

    assert_redirected_to lendings_url
  end
end
