require 'test_helper'

class DovetestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dovetest = dovetests(:one)
  end

  test "should get index" do
    get dovetests_url
    assert_response :success
  end

  test "should get new" do
    get new_dovetest_url
    assert_response :success
  end

  test "should create dovetest" do
    assert_difference('Dovetest.count') do
      post dovetests_url, params: { dovetest: { email: @dovetest.email, login: @dovetest.login, name: @dovetest.name } }
    end

    assert_redirected_to dovetest_url(Dovetest.last)
  end

  test "should show dovetest" do
    get dovetest_url(@dovetest)
    assert_response :success
  end

  test "should get edit" do
    get edit_dovetest_url(@dovetest)
    assert_response :success
  end

  test "should update dovetest" do
    patch dovetest_url(@dovetest), params: { dovetest: { email: @dovetest.email, login: @dovetest.login, name: @dovetest.name } }
    assert_redirected_to dovetest_url(@dovetest)
  end

  test "should destroy dovetest" do
    assert_difference('Dovetest.count', -1) do
      delete dovetest_url(@dovetest)
    end

    assert_redirected_to dovetests_url
  end
end
