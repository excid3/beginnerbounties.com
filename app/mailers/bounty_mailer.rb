class BountyMailer < ApplicationMailer
  default from: 'test@example.com',
          to: -> { User.all.pluck(:email) }

  layout "mailer"

  def open_bounty
    @bounty = Bounty.where(status: "open").last(15)
    mail( bcc: User.all.pluck(:email), subject: 'Here are the latest open bounties')
  end
end
