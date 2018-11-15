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
    ReservedMailer.notify(supply)
  end

  def update
  end

  def edit
  end

  def destroy
    supply = Supply.find(params[:supply_id])
    @supply.reserved_user = current_user
    reserved_supply.delete(reserved_user: current_user)
  end
end
