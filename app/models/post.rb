class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title, :image
  validates :name,  :presence => true
  validates :title, :presence => true,
    :length => { :minimum => 5 }
  belongs_to :user

  mount_uploader :image, ImageUploader
  has_many :comments
end
