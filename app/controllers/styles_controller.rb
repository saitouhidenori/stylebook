class StylesController < ApplicationController

  def top
  end

  def index
    @styles = Style.includes(:designer).order("id ASC").page(params[:page]).per(20)
    @style = Style.all
    # @style_id = Like.find(:id)
    # @styles = Style.order("id ASC").page(params[:page]).per(20)
    # @like = Like.find_by(style_id: 4)
  end


  def new
    @style = Style.new
  end

  def show
    @style = Style.find(params[:id])
    # @styles = Style.order("id ASC").page(params[:page]).per(20)
    # @style = Style.find(params[:id])
    # @likes = Like.where(style_id: params[:id])
  end

  def create
    Style.create(designer: style_params[:designer], shop_name: style_params[:shop_name], image: style_params[:image], designer_id: current_designer.id)
  end

  def destroy
    style = Style.find(params[:id])
    if style.designer_id == current_designer.id
      style.destroy
    end
  end

  private
  def style_params
    params.permit(:designer, :shop_name, :image)
  end

end
