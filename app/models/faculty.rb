class Faculty < ActiveRecord::Base
	validates :name, :description, :contact, :mail_id, :presence => true
end
