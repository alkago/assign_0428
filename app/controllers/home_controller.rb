class HomeController < ApplicationController
  
    def index
        
    end
    def write
        @send_title = params[:title]
        @send_content = params[:content]
        
        @new_post = Post.new
        @new_post.title = @send_title
        @new_post.content = @send_content
        @new_post.save
        
        redirect_to "/list"
    end
    def list
        @every_post = Post.all.order("id desc")
        
        
    end
    def destroy
       @one_post = Post.find(params[:id])
       @one_post.destroy
       redirect_to "/list"
    end
    def update_view
       @one_post = Post.find(params[:id])
        
    end
    def real
        @one_post = Post.find(params[:id])
        @one_post.title = params[:title]
        @one_post.content = params[:content]
        @one_post.save
        redirect_to "/list"
    end
end
