class Batch < ActiveRecord::Base
	belongs_to :course
	validates :name, :fee, :demo, :duration,:start_date, :presence => true
end
