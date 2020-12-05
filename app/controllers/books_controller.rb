class BooksController < ApplicationController
  before_action :set_book, only:[:show, :edit, :update, :destroy]


  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path, notice: '新增成功'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to root_path, notice: '編輯成功'
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to root_path, notice: '刪除成功'
  end



  private
  def book_params
    params.require(:book).permit(:bookname, :author)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end