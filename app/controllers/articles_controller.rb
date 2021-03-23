class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
  end

  def show
    @article = Article.find(params[:id])

    @article_creator = User.find(@article.user_id)
  end

  def edit
    @article = Article.find(params[:id])

    @article_creator = User.find(@article.user_id)
  end

  def create
    @user = current_user
    @article = @user.articles.new(article_params)
    if @article.save
      # render plain: "Article was successfully saved!"
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private

  def article_params
    params.require(:articles).permit(:title, :body)
  end
end