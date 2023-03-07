desc 'send open bounties email'
task send_bounty_email: :environment do
  BountyMailer.open_bounty.deliver_later
end