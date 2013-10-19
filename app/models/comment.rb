class Comment < ActiveRecord::Base
  attr_accessible :blog_id, :comment_box, :user_id
  belongs_to :blog 
  belongs_to :user
end
