class Post < ActiveRecord::Base
  has_many :comments

  validates :title, presence: {
    message: "Please input a title"} 
  validates :user_id, presence: true

  
end
