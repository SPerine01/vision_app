class Vision < ActiveRecord::Base
	belongs_to :user
	
	has_attached_file :photo, styles: { medium: "300x300>" }
  	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  	validates :photo, attachment_presence: true
end
