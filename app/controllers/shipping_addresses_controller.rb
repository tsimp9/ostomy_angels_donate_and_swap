class ShippingAddressesController < ApplicationController
  def new
    @shipping_address = ShippingAddress.new
  end

  def create
     @shipping_address = current_user.shipping_addresses.new(shipping_address_params)
    if @shipping_address.save
      redirect_to shipping_address_path(@shipping_address), notice: "Shipping address successfully created!"
    else
      flash[:shipping_address_errors] = @shipping_address.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

  def index
  end

private  
  def shipping_address_params
    params.require(:shipping_address).permit(:street1, :street2, :city, :state, :zip)
  end

end
