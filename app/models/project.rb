class Project < ActiveRecord::Base


	has_many :works


	accepts_nested_attributes_for :works,
										
										allow_destroy: true
 	

  validates :titolo, :id_cliente, :stato, presence: true
end
