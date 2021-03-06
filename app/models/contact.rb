class Contact 
	include ActiveModel::Model
 
	attr_accessor :name, :email, :content
	validates :name, presence: true
	validates_format_of :email, with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i
	validates :content, presence: true
end