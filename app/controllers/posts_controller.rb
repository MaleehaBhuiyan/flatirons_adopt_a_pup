class PostsController < ApplicationController

    before_action :post_method, only: [:show, :edit, :update, :destroy] 


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
        if @post.valid?
            redirect_to post_path(@post)
        else   
            flash[:my_errors] = @post.errors.full_messages
            redirect_to new_post_path
        end 
    end

    def edit 
    end 

    def update 
        @post = Post.update(post_params)
        if @post.update(post_params)
        redirect_to post_path(@post.id)
        else 
            flash[:my_errors] = @post.errors.full_messages
            redirect_to edit_post_path
        end
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
