class PenaltyEntriesController < ApplicationController
  before_action :set_penalty_entry, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @penalty_entries = PenaltyEntry.all
    respond_with(@penalty_entries)
  end

  def show
    respond_with(@penalty_entry)
  end

  def new
    @penalty_entry = PenaltyEntry.new
    respond_with(@penalty_entry)
  end

  def edit
  end

  def create
    @penalty_entry = PenaltyEntry.new(penalty_entry_params)
    @penalty_entry.save
    respond_with(@penalty_entry)
  end

  def update
    @penalty_entry.update(penalty_entry_params)
    respond_with(@penalty_entry)
  end

  def destroy
    @penalty_entry.destroy
    respond_with(@penalty_entry)
  end

  private
    def set_penalty_entry
      @penalty_entry = PenaltyEntry.find(params[:id])
    end

    def penalty_entry_params
      params.require(:penalty_entry).permit(:user_id, :penalty_id, :date)
    end
end
