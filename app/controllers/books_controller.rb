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

  def create
    new_book = params.require(:books).permit(:title, :description)
    book = Books.create(new_book)

    respond_to do |f|
      f.html {redirect_to books_path}
      f.json {render json: book}
    end
  end


end
