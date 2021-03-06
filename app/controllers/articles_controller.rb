class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(articles_params)
    redirect_to articles_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def articles_params
    params.require(:article).permit(:title, :content)
  end
end
