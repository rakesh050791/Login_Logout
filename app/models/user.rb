class User < ActiveRecord::Base
  attr_accessible :age, :email, :name, :password
  has_many :blogs
  has_many :comments
  has_one :profile


  def self.authenticate(email, password)
	  user = find_by_email(email)
	   if user and user.password.eql?(password)
		  user
	   else
		  false
	   end
  end

  after_save :create_profile
  
  def create_profile
    @user = User.find(self.id)
    @profile  = Profile.new(:name => self.name, :age => self.age, :user_id => @user.id)
    @profile.save
  end

end
