class Listing < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "milf.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  class User < ActiveRecord::Base
  has_attached_file :avatar,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  end
end
