class Movie < ActiveRecord::Base
	validates :title, presence: true, length: { minimum: 10 }
	validates :description, presence: true
	validates :year_released, numericality: {only_integer: true, greater_than_or_equal_to: 0}
	validates :rating, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
	
	def self.search_movie(param)
	where("title LIKE :query OR description LIKE :query OR year_released LIKE :query OR rating LIKE :query", query: "%#{param}%")
	end

end
