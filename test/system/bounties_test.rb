require "application_system_test_case"

class BountiesTest < ApplicationSystemTestCase
  setup do
    sign_in users(:one)
    @bounty = bounties(:one)
  end

  test "visiting the index" do
    visit users_bounties_url
    assert_selector "h2", text: "My Bounties"
  end

  test "should create bounty" do
    visit users_bounties_url
    click_on "New Bounty"
    fill_in "Amount", with: @bounty.amount
    fill_in "Title", with: @bounty.title
    fill_in_rich_text_area "Description", with: @bounty.description
    fill_in "Url", with: @bounty.url
    click_on "Create Bounty"
    assert_text "Bounty was successfully created"
  end

  test "should update Bounty" do
    visit users_bounty_url(@bounty)
    click_on "Edit this bounty", match: :first
    fill_in "Amount", with: @bounty.amount + 10
    click_on "Update Bounty"
    assert_text "Bounty was successfully updated"
  end

  test "should destroy Bounty" do
    visit edit_users_bounty_url(@bounty)
    page.accept_confirm do
      click_on "Delete", match: :first
    end
    assert_text "Bounty was successfully destroyed"
  end
end
