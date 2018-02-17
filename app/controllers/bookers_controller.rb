class BookersController < ApplicationController
  def index
  	  @post = Booker.new
  	  @posts = Booker.all
  end

  def show
  	  @post = Booker.find(params[:id])
  end

  def create
  	  post = Booker.new(post_params)
  	  post.save
  	  redirect_to booker_path(post)
  end

  def edit
  	  @post = Booker.find(params[:id])
  end

  def update
  	  book = Booker.find(params[:id])
  	  book.update(post_params)
  	  redirect_to booker_path, notice: '更新しました'
  end

  def destroy
  	  book = Booker.find(params[:id])
  	  book.destroy
  	  redirect_to bookers_path, alert: '削除しました'
  end

  private
  	def post_params
  	  params.require(:booker).permit(:title, :body)
  	end

end
