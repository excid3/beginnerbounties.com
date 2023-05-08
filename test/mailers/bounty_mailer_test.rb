require "test_helper"

class BountyMailerTest < ActionMailer::TestCase
  def setup
    @user = users(:one)
    @bounties = [bounties(:one)]
  end

  test "bounty email" do
    mail = BountyMailer.with(user: @user, bounties: @bounties).open_bounty
    assert_equal "first@example.com", @user.email
    assert_equal "Here are the latest open bounties", mail.subject
    assert_equal ["first@example.com"], mail.to  
    assert_equal ["no-reply@beginnerbounties.com"], mail.from
    assert_match bounties.first.title, mail.body.encoded
  end
end