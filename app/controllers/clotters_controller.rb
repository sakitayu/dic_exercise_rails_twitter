class ClottersController < ApplicationController
  before_action :set_clotter, only: [:show, :edit, :update, :destroy]

  def index
    @clotter = Clotter.all.order(id: "desc")
  end

  def new
    @clotter = Clotter.new
  end

  def show
    params[:id]
  end

  def edit
  end

  def create
    @clotter = Clotter.new(clotter_params)
    if params[:back]
      render :new
    else
      if @clotter.save
        redirect_to clotters_path, notice: "ツイートしました！"
      else
        render 'new'
      end
    end
  end

  def update
    if @clotter.update(clotter_params)
      redirect_to clotters_path, notice: "ツイートを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @clotter.destroy
    redirect_to clotters_path
  end

  def confirm
    @clotter = Clotter.new(clotter_params)
    render :new if @clotter.invalid?
  end

  private

  def clotter_params
    params.require(:clotter).permit(:content)
  end

  def set_clotter
    @clotter = Clotter.find(params[:id])
  end
  
end
