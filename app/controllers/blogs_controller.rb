class BlogsController < ApplicationController

    def new
         @blog = Blog.new
     end	


     def create
         @blog = Blog.new(params[:blog])
         @blog.user_id = current_user.id

         if @blog.save
         	redirect_to(:controller => 'blogs', :action => 'index')
         end
     end


     def index         
         unless current_user
         	@blogs = Blog.all
         else
         	@blogs = current_user.blogs
         end         
     end


     def show
        @blog = Blog.find(params[:id])
     end

end
