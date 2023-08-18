class ListsController < ApplicationController
  before_action :show_list, only: [:show, :edit, :update, :destroy]

  def index
    @list = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = Restaurant.new(list_params)
    if @restaurant.save
      redirect_to list_path(@restaurant), notice: "List was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def show_list
    @show = List.find(params[:id])
  end

end
