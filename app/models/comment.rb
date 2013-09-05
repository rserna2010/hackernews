class Comment < ActiveRecord::Base
  # Remember to create a migration!
validates :body, presence: {
    message: "Comments cannot be blank"} 
validates :user_id, presence: true
validates :post_id, presence: true 


end
