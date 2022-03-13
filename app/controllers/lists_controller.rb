class ListsController < ApplicationController
  def new
    @list = List.new
  end
  
  def create
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end

  def index
  end

  def show
  end

  def edit
  end
  
  # list_params内では保存したいデータの絞り込みが行われている
  # privateは一種の境界線。Controllerファイルの一番下のendのすぐ上に書く
  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
  
end
