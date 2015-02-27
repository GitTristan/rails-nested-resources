class CompaniesController < ApplicationController

  def index
    @companies = Company.all
    @company = Company.new
    @event = Event.new
  end

  def show
    @company = Company.find(params[:id])
  end
end
