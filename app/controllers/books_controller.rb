class BooksController < ApplicationController
  def index
    book = Books.all
    respond_to do |f|
      f.html {render :layout => false }
      f.json {render :json => book}
    end
  end

  def show
    if params[:format] == "json"
      book = Books.find(params[:id])
    end
    respond_to do |f|
      f.html {render :layout => false}
      f.json {render :json => book}
    end
  end

end
