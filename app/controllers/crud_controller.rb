class CrudController < ApplicationController
    def index
        @posts = Post.all
    end

    def write
    end

    def create
        post = Post.new
        post.title = params[:title]
        post.content = params[:content]
        post.save

        redirect_to "/crud"
    end

    def modify
        @post = Post.find(params[:post_id])
    end

    def update
        post = Post.find(params[:post_id])
        post.title = params[:title]
        post.content = params[:content]
        post.save

        redirect_to "/crud"
    end

    def delete
        Post.destroy(params[:post_id])

        redirect_to "/crud"
    end
end
