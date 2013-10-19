class CommentsController < ApplicationController

      def new
        @blog = Blog.find(params[:blog_id])        
        @comment = Comment.new
     end	


     def create
        @blog = Blog.find(params[:blog_id])
         @comment = @blog.comments.new(params[:comment])
         @comment.user_id = current_user.id
        

         if @comment.save
         	redirect_to blog_path(@blog)
         end
     end

end
