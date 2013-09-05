class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  
  validates :name, presence: {
    message: "Name required"} 
  validates :name, uniqueness: {
    message: "That user name is not available"}
  validates :password_hash, presence: {
    message: "Password required"} 
  validates :name, format: { with: /.+/,
    message: "Must be 1 or more characters" }


  
end
