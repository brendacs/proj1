class Pokemon < ActiveRecord::Base
	belongs_to :trainer
	validates :name, presence: true, uniqueness: true # check if there is a name, check if name is not duplicate
end
