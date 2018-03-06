class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  def index
    @comment_topics = current_user.comment_topics
  end
  def create
    @comment = Comment.new(body: params[:comment][:body])
    if @comment.save
      redirect_to topics_path, notice: 'コメントを投稿しました'
    else
      redirect_to topics_path, notice: 'コメントが投稿できませんでした'
    end
  end
end
