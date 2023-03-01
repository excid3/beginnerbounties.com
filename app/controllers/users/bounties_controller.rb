class Users::BountiesController < ApplicationController
  before_action :set_bounty, only: %i[ show edit update destroy ]

  # GET /bounties
  def index
    @bounties = current_user.bounties.sorted
  end

  # GET /bounties/1
  def show
  end

  # GET /bounties/new
  def new
    @bounty = Bounty.new
  end

  # GET /bounties/1/edit
  def edit
  end

  # POST /bounties
  def create
    @bounty = current_user.bounties.new(bounty_params)

    if @bounty.save
      redirect_to users_bounty_url(@bounty), notice: "Bounty was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bounties/1
  def update
    if @bounty.update(bounty_params)
      redirect_to users_bounty_url(@bounty), notice: "Bounty was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /bounties/1
  def destroy
    @bounty.destroy
    redirect_to users_bounties_url, notice: "Bounty was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bounty
      @bounty = current_user.bounties.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bounty_params
      params.require(:bounty).permit(:user_id, :title, :description, :url, :amount, :status)
    end
end
