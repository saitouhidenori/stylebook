class DesignersController < ApplicationController

  def index
    @designer = current_designer.designer
    @shop_name = current_designer.shop_name
    @styles = current_designer.styles.page(params[:page]).per(20).order("created_at DESC")
  end

  def new
  end

  def show
    @designer = Designer.find(params[:id])
  end

end
