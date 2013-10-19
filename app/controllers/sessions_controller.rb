class SessionsController < ApplicationController

     def create
          @user = User.authenticate(params[:email],params[:password])
          if @user
          	session[:user_id] = @user.id
               msg1=@user.name
               msg = "Welcome  "+msg1+" You Have LoggedIn Successfully"
          else
               msg = "user not signed up"
          end
          flash[:notice] = msg
          #redirect_to root_path  

           respond_to do |format|
              format.html
           end

          #render "users/signup"
     end


     def destroy
          session[:user_id] = nil
          redirect_to root_path
     end	

end
