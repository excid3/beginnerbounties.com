require "test_helper"

class BountiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:one)
    @bounty = bounties(:one)
  end

  test "should get index" do
    get root_url
    assert_response :success
  end

  test "should get new" do
    get new_users_bounty_url
    assert_response :success
  end

  test "should create bounty" do
    assert_difference("Bounty.count") do
      post users_bounties_url, params: {bounty: {amount: @bounty.amount, description: @bounty.description, title: @bounty.title, url: @bounty.url}}
    end

    assert_redirected_to users_bounty_url(Bounty.last)
  end

  test "should show bounty" do
    get bounty_url(@bounty)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_bounty_url(@bounty)
    assert_response :success
  end

  test "should update bounty" do
    patch users_bounty_url(@bounty), params: {bounty: {amount: @bounty.amount + 10}}
    assert_redirected_to bounty_url(@bounty)
  end

  test "should destroy bounty" do
    assert_difference("Bounty.count", -1) do
      delete users_bounty_url(@bounty)
    end

    assert_redirected_to users_bounties_url
  end
end
