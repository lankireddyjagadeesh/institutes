class Course < ActiveRecord::Base
	has_and_belongs_to_many :institutes
	has_many :batches
	validates :name, :description, :presence => true
end
