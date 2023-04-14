class ListsController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @list = List.new
  end
def create
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end
  
  def index
   @lists = List.all  
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
  end
   private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
