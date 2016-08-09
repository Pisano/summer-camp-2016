class PostsController < ApplicationController

  before_action :set_post,only: [:show, :edit, :update, :destroy]

  # GET /posts
  def index
    @posts = Post.all

  end

  # GET /posts/:id
  def show

  end

  #GET /posts/new
  def new
    @post =Post.new
  end

#POST /posts
def create
    #params ={post: { title:"my title" ,
    #                 content:"maasdfk" }
    #        }
    @post = Post.new(permitted_post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render:new
    end
  end

  #GET posts/:id/edit
  def edit

  end

  # PUT /posts/:id
  def update
    if @post.update(permitted_post_params)

      redirect_to post_path(@post)
    else render:edit
    end

  end

  #delete /posts/:id
  def destroy
    post.destroy

    redirect_to posts_path
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end

  def permitted_post_params
    params.require(:post).permit(:title, :content, :author_name)
  end


end
