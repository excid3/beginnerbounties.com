class BountiesController < ApplicationController
  before_action :set_bounty, only: %i[ show edit update destroy ]

  # GET /bounties or /bounties.json
  def index
    @bounties = Bounty.sorted.sort_by(&:created_at).reverse
  end

  # GET /bounties/1 or /bounties/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bounty
      @bounty = current_user.bounties.find(params[:id])
    end
end
