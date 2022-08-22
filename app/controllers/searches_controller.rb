class SearchesController < ApplicationController
  def index
    @posts = Post.all.order(shop_score: 'DESC')
  end

  def show
    @post = Post.find(params[:id])
  end
end
