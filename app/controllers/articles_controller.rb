class ArticlesController < ApplicationController

  def welcome
  end

  def index
    @articles=Article.all
  end

  def show
  end

  def new
  end

  def create
    @article=Article.new(article_params)
    
    if @article.save
      redirect_to articles_path
    else
      render 'new'
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end


private

def article_params
    params.require(:article).permit(:title,:text)
  end


end


