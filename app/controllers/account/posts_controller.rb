class Account::PostsController < ApplicationController
before_action :authenticate_user!
 def index
   @posts = current_user.posts
 end
 def edit
   @post = Post.find(params[:id])
   posts = current_user.posts
 end
 def destroy
   @post = Post.find(params[:id])

   @post.destroy
   flash[:alert] = "Post deleted"
   redirect_to posts_path
 end
end
