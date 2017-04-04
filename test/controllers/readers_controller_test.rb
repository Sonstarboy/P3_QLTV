require 'test_helper'

class ReadersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reader = readers(:one)
  end

  test "should get index" do
    get readers_url
    assert_response :success
  end

  test "should get new" do
    get new_reader_url
    assert_response :success
  end

  test "should create reader" do
    assert_difference('Reader.count') do
      post readers_url, params: { reader: { birthday: @reader.birthday, code_card: @reader.code_card, end_date: @reader.end_date, name: @reader.name, phone: @reader.phone, start_date: @reader.start_date, unit: @reader.unit } }
    end

    assert_redirected_to reader_url(Reader.last)
  end

  test "should show reader" do
    get reader_url(@reader)
    assert_response :success
  end

  test "should get edit" do
    get edit_reader_url(@reader)
    assert_response :success
  end

  test "should update reader" do
    patch reader_url(@reader), params: { reader: { birthday: @reader.birthday, code_card: @reader.code_card, end_date: @reader.end_date, name: @reader.name, phone: @reader.phone, start_date: @reader.start_date, unit: @reader.unit } }
    assert_redirected_to reader_url(@reader)
  end

  test "should destroy reader" do
    assert_difference('Reader.count', -1) do
      delete reader_url(@reader)
    end

    assert_redirected_to readers_url
  end
end
