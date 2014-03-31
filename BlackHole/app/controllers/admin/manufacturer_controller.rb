class Admin::ManufacturerController < ApplicationController
  def new
      @manufacturer= Manufacturer.new
      @page_title= 'Crear Fabricante'
  end

  def create
      @manufacturer = Manufacturer.new(params[:manufacturer])
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
    @manufacturer = Manufacturer.find(params[:id])
    @page_title = @manufacturer.company_name
  end

  def index
    @manufacturer = Manufacturer.find(:all)
    @page_title = 'Listado de autores'
  end
end
