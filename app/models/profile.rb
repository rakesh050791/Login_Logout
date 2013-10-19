class Profile < ActiveRecord::Base
  attr_accessible :age, :country, :description, :designation, :email, :gender, :mobile_no, :name, :user_id
  belongs_to :user
end
