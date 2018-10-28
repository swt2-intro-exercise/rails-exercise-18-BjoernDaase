class Paper < ApplicationRecord
	validates :title, presence: true
	validates :venue, presence: true
  	validates :year, numericality: { only_integer: true }
end
