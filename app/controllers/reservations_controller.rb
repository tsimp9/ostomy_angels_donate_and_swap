class ReservationsController < ApplicationController
  def index
    @supplies = current_user.reserved_supplies
  end

  def show
  end

  def new
  end

  def create
    supply = Supply.find(params[:supply_id])
    supply.update(reserved_user: current_user)
  end

  def update
  end

  def edit
  end

  def destroy
  end
end