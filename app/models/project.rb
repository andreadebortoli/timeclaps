class Project < ActiveRecord::Base


	has_many :works
	belongs_to :customer

	accepts_nested_attributes_for :works,
										
										allow_destroy: true
 	

  validates :titolo, :customer_id, :stato, presence: true
end
