class Api::V1::TripsController < ApplicationController
  def index
    @trips = Trip.all
    render json: @trips, each_serializer: TripSerializer, status: :ok
  end

  def show
    @trip = Trip.find(params[:id])
    render json: @trip, serializer: TripSerializer, status: :ok
  end

  def create
    binding.pry
    @trip = Trip.new(trip_params)

    if @trip.save
      render json: @trip, serializer: TripSerializer, status: :created
    else
      render json: { errors: @trip.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @trip = Trip.find(params[:id])

    if @trip.update(trip_params)
      render json: @trip, serializer: TripSerializer, status: :ok
    else
      render json: { errors: @trip.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def trip_params
    params.permit(:name, :budget_min, :budget_max, :max_duration, :status, :preferred_season)
  end
end
