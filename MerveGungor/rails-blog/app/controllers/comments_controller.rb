class CommentsController < ApplicationController
  before_action :find_post

  def index
    @comments = @post.comments
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = @post.comments.build(comment_params)

    if @comment.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end
  private

    def comment_params
      params.require(:comment).permit(:content)
    end

    def find_post
      @post = Post.find(params[:post_id])
    end
end

