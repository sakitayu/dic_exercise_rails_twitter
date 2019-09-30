class ClottersController < ApplicationController
  before_action :set_clotter, only: [:show, :edit, :update, :destroy]

  def index
    @clotter = Clotter.all
  end

  def new
    @clotter = Clotter.new
  end

  def show
    params[:id]
  end

  def edit
  end

  def update
    if @clotter.update(blog_params)
      redirect_to clotters_path, notice: "ツイートを編集しました！"
    else
      render :edit
    end
  end

  def create
    @clotter = Clotter.create(clotter_params)
    if @clotter.save
      # 一覧画面へ遷移して"ブログを作成しました！"とメッセージを表示します。
      redirect_to clotters_path, notice: "ブログを作成しました！"
    else
      # 入力フォームを再描画します。
      render :new
    end
  end

  def destroy
    @clotter.destroy
    redirect_to clotters_path
  end

  private

  def clotter_params
    params.require(:clotter).permit(:content)
  end

  def set_clotter
    @clotter = Clotter.find(params[:id])
  end

end
