class CategoriesController < ApplicationController
  def index
  	@categories=Category.all
  end

  def show
  	@category=Category.find(params[:id])
  	@posts=@category.microposts.paginate(page: params[:page])
  end

  def buy
  	@category=Category.find(params[:id])
  	@posts=@category.microposts.paginate(page: params[:page])
  	@buy = @posts.where(buysell: 'Buy')
  end

  def sell
  	@category=Category.find(params[:id])
  	@posts=@category.microposts.paginate(page: params[:page])
  	@sell = @posts.where(buysell: 'Sell')
  end
end
