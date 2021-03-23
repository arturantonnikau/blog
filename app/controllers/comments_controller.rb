class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])

    params[:comment][:name] = current_user.name
    params[:comment][:email] = current_user.email

    @comment = @article.comments.new(comment_params)
    if @comment.save
      redirect_to article_path(@article)
    else
      render plain: "Try Commit Comment Again"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :email, :body)
  end
end
