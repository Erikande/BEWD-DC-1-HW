#Apartment class.
class Apartment

	attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent

	def initialize(name, sqft, bedrooms, bathrooms)
		@name = name
		@sqft = sqft
		@bedrooms = bedrooms
		@bathrooms = bathrooms
		@renter = nil
    # @rent = nil
	end

	def is_filled?
		@renter != nil
	end

	def to_s
		"Apartment: #{@name}\n Square Feet: #{@sqft}  Number of Bedrooms: #{@bedrooms}  Number of Bathrooms: #{@bathrooms} Rent: #{@rent}"
	end

end

