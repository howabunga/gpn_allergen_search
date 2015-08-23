class AllergensController < ApplicationController
  def index
    @allergens = Allergen.all
  end

  def show
    @allergen = Allergen.find(params[:id])
  end

  def new
    @allergen = Allergen.new
  end

  def create
    @allergen = Allergen.new
    @allergen.name = params[:name]

    if @allergen.save
      redirect_to "/allergens", :notice => "Allergen created successfully."
    else
      render 'new'
    end
  end

  def edit
    @allergen = Allergen.find(params[:id])
  end

  def update
    @allergen = Allergen.find(params[:id])

    @allergen.name = params[:name]

    if @allergen.save
      redirect_to "/allergens", :notice => "Allergen updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @allergen = Allergen.find(params[:id])

    @allergen.destroy

    redirect_to "/allergens", :notice => "Allergen deleted."
  end
end
