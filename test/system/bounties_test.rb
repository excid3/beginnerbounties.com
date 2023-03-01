require "application_system_test_case"

class BountiesTest < ApplicationSystemTestCase
  setup do
    @bounty = bounties(:one)
  end

  test "visiting the index" do
    visit bounties_url
    assert_selector "h1", text: "Bounties"
  end

  test "should create bounty" do
    visit bounties_url
    click_on "New bounty"

    fill_in "Amount", with: @bounty.amount
    fill_in "Status", with: @bounty.status
    fill_in "Title", with: @bounty.title
    fill_in "Url", with: @bounty.url
    fill_in "User", with: @bounty.user_id
    click_on "Create Bounty"

    assert_text "Bounty was successfully created"
    click_on "Back"
  end

  test "should update Bounty" do
    visit bounty_url(@bounty)
    click_on "Edit this bounty", match: :first

    fill_in "Amount", with: @bounty.amount
    fill_in "Status", with: @bounty.status
    fill_in "Title", with: @bounty.title
    fill_in "Url", with: @bounty.url
    fill_in "User", with: @bounty.user_id
    click_on "Update Bounty"

    assert_text "Bounty was successfully updated"
    click_on "Back"
  end

  test "should destroy Bounty" do
    visit bounty_url(@bounty)
    click_on "Destroy this bounty", match: :first

    assert_text "Bounty was successfully destroyed"
  end
end
