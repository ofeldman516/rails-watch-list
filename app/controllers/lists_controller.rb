class ListsController < ApplicationController
  before_action :show_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@restaurant), notice: "List was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def show_list
    @list = List.find(params[:id])
  end

end
