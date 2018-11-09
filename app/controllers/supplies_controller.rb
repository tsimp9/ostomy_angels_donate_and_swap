class SuppliesController < ApplicationController
  def show
    @supplies = Supply.find(params[:id])
  end

  def index
    @supplies = Supply.all
    # for pagination
    # @supplies = Supply.order(:category).page(params[:page])
  end

  def new
    @supply = Supply.new
  end

  def create
    @supply = current_user.supplies.new(supply_params)
    if @supply.save
      redirect_to supply_path(@supply), notice: "Supply successfully created!"
    else
      flash[:supply_errors] = @supply.errors.full_messages
      render :new
    end
  end

  def edit
    @supply = current_user.supplies.find(params[:id])
  end

  def update
    @supply = current_user.supplies.find(params[:id])
    @supply.update(supply_params)
      if @supply.save
       redirect_to supply_path(@supply), notice: "Supply Changed"
      else
       render :edit
      end
  end

private  
  def supply_params
    params.require(:supply).permit(:category, :brand, :product_name, :product_id, :description)
  end
end
