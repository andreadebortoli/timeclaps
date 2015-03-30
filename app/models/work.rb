class Work < ActiveRecord::Base
	belongs_to :project
	belongs_to :technician
	belongs_to :location
end
