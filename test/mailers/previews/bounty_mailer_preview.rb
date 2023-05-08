# Preview all emails at http://localhost:3000/rails/mailers/bounty_mailer
class BountyMailerPreview < ActionMailer::Preview
  def open_bounty
    BountyMailer.with(user: User.first,
                      bounties: Bounty.where(status: "open").last(15)).open_bounty
  end
end
