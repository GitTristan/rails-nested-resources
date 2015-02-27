class EventsController < ApplicationController
  before_action :find_and_set_company

  def index
    @events = @company.events
  end

  def new
    @event = Event.new
  end

  def create
    @event = @company.events.new(event_params)
    if @event.save
      redirect_to company_path(params[:company_id])
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :company_id)
  end

  def find_and_set_company
    @company = Company.find(params[:company_id])
  end
end
