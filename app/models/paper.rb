class Paper < ApplicationRecord
	has_and_belongs_to_many :authors
	scope :published, ->(year) { where("year = ?", year) }

	validates :title, presence: true
	validates :venue, presence: true
  	validates :year, numericality: { only_integer: true }

  	def author_ids
      authors.collect {| author | author.id }
  	end
end
