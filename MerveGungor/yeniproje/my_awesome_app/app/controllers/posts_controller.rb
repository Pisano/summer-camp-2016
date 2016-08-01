class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  # app/controllers/posts_controller.rb
def index
  @posts = Post.all

  render json: @posts, each_serializer: SimplePostSerializer
end
  # app/controllers/posts_controller.rb
def show
  render json: @post, stars: 4
end

  # POST /posts
  def create
    @post = Post.new(post_params)

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # app/controllers/posts_controller.rb
def update
  if @post.update(post_params)
    render json: @post, serializer: SimplePostSerializer
  else
    render json: @post.errors, status: :unprocessable_entity
  end
end

  # DELETE /posts/1
  def destroy
    @post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
