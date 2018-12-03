class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :destroy]

  def index
    @articles = Article.where(status: 1).order("created_at DESC")
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to new_article_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :status)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
