class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      @price = PricingEngineService.calculate(@booking.animal_type, @booking.hours_requested)
      redirect_to bookings_path, notice: "Booking created successfully! Total price: $#{@price}"
    else
      render :new
    end
  end

  def index
    @bookings = Booking.all.order(created_at: :desc)
  end

  private

  def booking_params
    params.require(:booking).permit(:first_name, :last_name, :animal_name, :animal_type, :hours_requested, :date_of_service)
  end
end
