class ListsController < ApplicationController
  def new
    @list = List.new
  end
  
  def create 
    list = List.new(list_params)
    list.save
    redirect_to list_path(list.id)
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end
  
  # list_params内では保存したいデータの絞り込みが行われている
  # privateは一種の境界線。Controllerファイルの一番下のendのすぐ上に書く
  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
  
end
