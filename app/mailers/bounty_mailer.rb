class BountyMailer < ApplicationMailer
  def open_bounty
    @user = params[:user]
    @bounties = params[:bounties]
    mail(to: @user.email, subject: "Here are the latest open bounties")
  end
end