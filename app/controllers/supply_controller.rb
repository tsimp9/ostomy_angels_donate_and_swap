class SupplyController < ApplicationController
  def show
    @supplies = Supply.find(params[:category] [:brand] [:product_id] [:description])
  end

  def index
    @supplies = Supply.all
    # for pagination
    # @supplies = Supply.order(:category).page(params[:page])
  end

  def new
    @supplies = Supply.new
  end

  def create
  end

  def edit
  end
end
