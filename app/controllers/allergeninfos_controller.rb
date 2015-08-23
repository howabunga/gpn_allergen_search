class AllergeninfosController < ApplicationController
  def index
    @allergeninfos = Allergeninfo.all
  end

  def show
    @allergeninfo = Allergeninfo.find(params[:id])
  end

  def new
    @allergeninfo = Allergeninfo.new
  end

  def create
    @allergeninfo = Allergeninfo.new
    @allergeninfo.allergen_id = params[:allergen_id]
    @allergeninfo.product_id = params[:product_id]

    if @allergeninfo.save
      redirect_to "/allergeninfos", :notice => "Allergeninfo created successfully."
    else
      render 'new'
    end
  end

  def edit
    @allergeninfo = Allergeninfo.find(params[:id])
  end

  def update
    @allergeninfo = Allergeninfo.find(params[:id])

    @allergeninfo.allergen_id = params[:allergen_id]
    @allergeninfo.product_id = params[:product_id]

    if @allergeninfo.save
      redirect_to "/allergeninfos", :notice => "Allergeninfo updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @allergeninfo = Allergeninfo.find(params[:id])

    @allergeninfo.destroy

    redirect_to "/allergeninfos", :notice => "Allergeninfo deleted."
  end
end
