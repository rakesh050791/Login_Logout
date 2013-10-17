class User < ActiveRecord::Base
  attr_accessible :age, :email, :name, :password


  def self.authenticate(email, password)
	  user = find_by_email(email)
	   if user and user.password.eql?(password)
		  user
	    else
		  false
	   end
  end
end
