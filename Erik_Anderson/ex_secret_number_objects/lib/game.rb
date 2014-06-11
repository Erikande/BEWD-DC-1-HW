# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

require 'lib/person'
require 'lib/secret_number.rb'

class Game

	attr_accessor :player, :secret, :loop

	def initialize(person_name)
		@player = Person.new(person_name)
    @secret = SecretNumber.new
	end


	#method for Game Start
	def intro
		puts "\nWelcome #{@player.name}, to the Secret Number game\n\nThese are the rules:\n\n• A random number, between 1−10, will be chosen.\n• You need to guess this number, in three tries or less.\n• You will loose (and the game will end) if you can't do this."
	end


	def start
		puts "What is your guess?"
		3.downto(1)	do |guesses|
		get_guess = gets.chomp.to_i
		if	get_guess == @secret.number
				puts "You are a smarty pants, you guessed my secret number." #displayed to user if they win
				break
		elsif get_guess > @secret.number
				puts "Too High!" + "\n" + "You have #{guesses-1} guesses left." #+ "\n\nWhat is your Guess?"
		elsif get_guess < @secret.number
				puts "Too Low!" + "\n" + "You have #{guesses-1} guesses left." + "\n\nWhat is your Guess?"
		end
		end

	puts
	puts "The Game is over.\n"
	r = @secret.number
	puts
	puts "The Secret number is " + "#{r}."

	end
end
