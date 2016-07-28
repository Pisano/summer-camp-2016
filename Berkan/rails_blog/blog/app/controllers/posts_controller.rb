class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  def index
    @posts = Post.all # sql("SELECT * FROM POSTS")
  end

  # GET /posts:id
  def show
    # params[:id]
    # set_post # @post = Post.find(params[:id]) # sql("SELECT * FROM POSTS WHERE ID = #{params[:id]}")
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # POST /posts
  def create
    # params = { post: { title: , content: } }
    # Post.new({title: params[:post][:title], content: params[:post][:content]})
    @post = Post.new(permitted_post_params)
    if @post.save
    # DRY
      redirect_to post_path(@post) # redirect_to post_path(id: post.id)
    else
      render :new # Does not call new function but creates a new object with the meeting attributes
    end
  end

  # GET /posts/:id/edit
  def edit
    # set_post # @post = Post.find(params[:id])
  end

  # PUT /posts/:id
  def update
    # set_post # post = Post.find(params[:id])
    if @post.update(permitted_post_params)
      redirect_to post_path(post)
    else
      render :edit
    end
  end

  # DELETE /post/:id
  def destroy
    # set_post # post = Post.find(params[:id])
    post.destroy

    redirect_to post_path()
  end

  private
    # Attributes to take from params hash
    def permitted_post_params
      params.require(:post).permit(:title, :content, :author_name)
    end

    def set_post()
      @post = Post.find(params[:id])
    end

end
