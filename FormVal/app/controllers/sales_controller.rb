class SalesController < ApplicationController
  def new
    @sale = Sale.new
  end

  def done
  end

  def create
    @sale = Sale.new(sale_params)
    # Incluir lógica de "negocio"
    # indicada por el ejercicio

    # fin lógica de negocio

    # Guardar registro
    if @sale.save
      redirect_to sales_done_path
    else
      redirect_to new_sales_path
    end
  end

  private

  def sale_params
    params.require(:sale).permit(
      :cod,
      :detail,
      :category,
      :value,
      :discount,
      :tax
    )
  end


end
