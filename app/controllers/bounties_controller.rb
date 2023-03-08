class BountiesController < ApplicationController
  include Pagy::Backend

  before_action :set_bounty, only: %i[ show edit update destroy ]

  # GET /bounties or /bounties.json
  def index
    @pagy, @bounties = pagy(Bounty.sorted)
  end

  # GET /bounties/1 or /bounties/1.json
  def show
  end

  def filters
  end

  def open_filter
  end

  def assigned_filter
  end

  def completed_filter
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bounty
      @bounty = Bounty.find(params[:id])
    end
end
