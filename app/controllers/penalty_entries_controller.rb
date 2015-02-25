class PenaltyEntriesController < ApplicationController
  before_action :set_penalty_entry, only: [:show, :edit, :update, :destroy]

  respond_to :html

  # GET /tours
  # GET /tours.json
  def index
    @penalty_entries = if params[:user_id]
               User.find(params[:user_id]).penalty_entries
             else
               PenaltyEntry.all
             end
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

    respond_to do |format|
      if @penalty_entry.save
        format.html { redirect_to penalty_entries_url, notice: 'Penalty entry was successfully created.' }
        format.json { head :no_content }
      else
        format.html { render :new }
        ;flash[:alert] = @penalty_entry.errors.full_messages.to_sentence
      end
    end
  end

  def update
  
  respond_to do |format|
      if @penalty_entry.update(penalty_entry_params)
        format.html { redirect_to penalty_entries_url, notice: 'Penalty entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :new }
        ;flash[:alert] = @penalty_entry.errors.full_messages.to_sentence
      end
    end
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
