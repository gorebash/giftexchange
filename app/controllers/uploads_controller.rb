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

    attendees = people.split(",").map do |p|
      { first_name: p.strip, likes: "", gift_exchange_id: ge.id }
    end
    Attendee.insert_all attendees unless attendees.empty?

    flash[:notice] = "People sent: #{people}"
    redirect_to :show
  end
end
