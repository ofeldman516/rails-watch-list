class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end


  def create

    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @movie = Movie.find(params[:bookmark][:movie_id])
    @bookmark.list = @list
    @bookmark.movie = @movie
    if @bookmark.save
      redirect_to list_path(@list), notice: "Bookmark was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end


  #assign list to bookmark, movie to bookmark
