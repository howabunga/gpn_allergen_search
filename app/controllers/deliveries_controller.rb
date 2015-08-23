class DeliveriesController < ApplicationController
  def index
    @deliveries = Delivery.all
  end

  def show
    @delivery = Delivery.find(params[:id])
  end

  def new
    @delivery = Delivery.new
  end

  def create
    @delivery = Delivery.new
    @delivery.name = params[:name]

    if @delivery.save
      redirect_to "/deliveries", :notice => "Delivery created successfully."
    else
      render 'new'
    end
  end

  def edit
    @delivery = Delivery.find(params[:id])
  end

  def update
    @delivery = Delivery.find(params[:id])

    @delivery.name = params[:name]

    if @delivery.save
      redirect_to "/deliveries", :notice => "Delivery updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @delivery = Delivery.find(params[:id])

    @delivery.destroy

    redirect_to "/deliveries", :notice => "Delivery deleted."
  end
end
