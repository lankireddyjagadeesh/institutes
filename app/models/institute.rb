class Institute < ActiveRecord::Base
	has_and_belongs_to_many :courses
	validates :name, :address,:contact, :mailid, :presence => true
	validates_format_of :mailid, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i


end
