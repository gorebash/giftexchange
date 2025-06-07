class UploadsController < ApplicationController
  def index
  end

  def show
  end

  def create
    file = params[:csv_file]
    people = file.read

    ge = GiftExchange.new
    ge.save

    # todo: save the attendees for the gift exchange

    flash[:notice] = "People sent: #{people}"
    redirect_to :show
  end
end
