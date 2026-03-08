class ApplicationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bounty
  before_action :set_application, only: [:show, :update]
  
  def create
    @application = @bounty.applications.build(application_params)
    @application.user = current_user
    
    if @application.save
      redirect_to @bounty, notice: 'Application submitted successfully!'
    else
      redirect_to @bounty, alert: 'Failed to submit application. Please try again.'
    end
  end
  
  def show
  end
  
  def update
    if @application.update(application_params)
      redirect_to @bounty, notice: 'Application updated successfully!'
    else
      redirect_to @bounty, alert: 'Failed to update application.'
    end
  end
  
  private
  
  def set_bounty
    @bounty = Bounty.find(params[:bounty_id])
  end
  
  def set_application
    @application = @bounty.applications.find(params[:id])
  end
  
  def application_params
    params.require(:application).permit(:message)
  end
end
