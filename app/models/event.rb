class Event < ActiveRecord::Base

	has_attached_file :main_image, :styles => {:big => "600x600>", :medium => "300x300>", :thumb => "100x100#" },:storage => :s3, :default_url => "/images/:style/missing.png"
  	#validates_attachment_content_type :main_image, :content_type => /\Aimage\/.*\Z/
  	do_not_validate_attachment_file_type :main_image
end
