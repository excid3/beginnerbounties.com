require "test_helper"

class BountiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bounty = bounties(:one)
  end

  test "should get index" do
    get bounties_url
    assert_response :success
  end

  test "should get new" do
    get new_bounty_url
    assert_response :success
  end

  test "should create bounty" do
    assert_difference("Bounty.count") do
      post bounties_url, params: {bounty: {amount: @bounty.amount, status: @bounty.status, title: @bounty.title, url: @bounty.url, user_id: @bounty.user_id}}
    end

    assert_redirected_to bounty_url(Bounty.last)
  end

  test "should show bounty" do
    get bounty_url(@bounty)
    assert_response :success
  end

  test "should get edit" do
    get edit_bounty_url(@bounty)
    assert_response :success
  end

  test "should update bounty" do
    patch bounty_url(@bounty), params: {bounty: {amount: @bounty.amount, status: @bounty.status, title: @bounty.title, url: @bounty.url, user_id: @bounty.user_id}}
    assert_redirected_to bounty_url(@bounty)
  end

  test "should destroy bounty" do
    assert_difference("Bounty.count", -1) do
      delete bounty_url(@bounty)
    end

    assert_redirected_to bounties_url
  end
end
