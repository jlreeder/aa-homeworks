class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    render :new
  end

  def create
    new_book = Book.new(book_params)
    if new_book.save
      redirect_to books_url
    else
      render :new
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to books_url
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
