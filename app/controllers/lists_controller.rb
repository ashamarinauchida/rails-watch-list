class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = Bookmark.find_by(list_id: @list)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params[:list])
    @list.save
  end

end
