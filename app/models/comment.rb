class Comment < ActiveRecord::Base
  attr_accessible :name, :comment
  
  validates :name, presence: true
  validates :comment, presence: true
end
