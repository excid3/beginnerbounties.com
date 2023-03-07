require "test_helper"

class BountyMailerTest < ActionMailer::TestCase
  def open_bounty
    BountyMailer.with(user: User.first).open_bounty
  end
end
