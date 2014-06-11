#Building Class
class Building

attr_accessor :name, :address, :apartments

	def initialize(name, address)
		@name = name
		@address = address
		@apartments = []
	end

	def view_apartments
		puts "//////////////#{@name} Apartment List////////////"
		puts "Building #{name} at the address of: #{address}, has #{@apartments.count} units.\n \n"
		@apartments.each do |arpt|
		puts arpt
		puts (arpt.is_filled? ? arpt.renter : "This apartment is available.")

		end
	end
end
