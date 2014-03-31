class Admin::ManufacturerController < ApplicationController
  def new
      @manufacturer= Manufacturer.new
      @page_title= 'Crear Fabricante'
  end

  def create
      @manufacturer = MAnufacturer.new(params[:manufacturer])
    if @manufacturer.save
      flash[:notice] = "Fabricante #{@manufacturer.company_name} ha sido creado con éxito."
      redirect_to :action => 'index'
    else
      @page_title = 'Crear nuevo Fabricante'
      render :action => 'new'
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
end
