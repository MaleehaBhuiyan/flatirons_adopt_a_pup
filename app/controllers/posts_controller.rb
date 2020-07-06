class PostsController < ApplicationController

    before_action :post_method, only: [:show, :edit, :update, :destory] 


    def index 
        @posts = Post.all 
    end 

    def show 
    end 

    def new
        @post = Post.new 
        @users = User.all
    end 

    def create 
        @post = Post.create(post_params)
        redirect_to post_path(@post)
    end 

    def edit 
    end 

    def update 
        @post = Post.update(post_params)
        redirect_to post_path(@post)
    end 

    def destroy 
    end 

    private 

    def post_params 
        params.require(:post).permit!
    end 

    def post_method 
        @post = Post.find(params[:id])
    end 
end
