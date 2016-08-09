class CommentsController < ApplicationController
  before_action :find_post, only: [:index, :create]

  def index
    @comments = post.comments
  end

  def new
    @comment = Comment.new
  end

  def create
    # @comment = Comment.new(comment_params)
    @comment = @post.comments.build(current_params)

    if @comment.save
      redirect_to post_path(@post)
      else
    render :new
    end
  end

  private
    def find_post
      @post = Post.find(params:[:post_id])
    end

    def comment_params
      params.require(:comment).permit(:content)
    end

end
