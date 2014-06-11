# this class will generate our secret number for us


class SecretNumber
	attr_accessor :number

  def initialize
	   @number = rand(1..10) 
  end

end