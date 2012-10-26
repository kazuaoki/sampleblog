class Article < ActiveRecord::Base
  attr_accessible :title, :content
  
  validates :title, presence: true, length: { maximum: 20 }
  validates :content, presence: true
  
  
end
