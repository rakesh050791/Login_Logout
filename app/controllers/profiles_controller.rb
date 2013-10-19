class ProfilesController < ApplicationController

  

   


  

   def show
     @profile = Profile.find(params[:id])
   end 


   def edit
   	 @profile = Profile.find(params[:id])
   end
 

   def update
      @profile = Profile.find(params[:id])
      if @profile.update_attributes(params[:profile])
        redirect_to user_profile_path
      end	
   end


   def destroy
       @profile = Profile.find(params[:id])
       @profile.destroy
   end
end
