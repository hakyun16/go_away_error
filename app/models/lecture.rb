class Lecture < ActiveRecord::Base
    has_many :replies
    
    mount_uploader :image, ImageUploader
end
