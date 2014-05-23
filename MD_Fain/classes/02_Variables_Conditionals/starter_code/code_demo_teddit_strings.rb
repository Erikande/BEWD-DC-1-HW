#TEDDIT:  Strings - Student's File
#	Teddit is a Ruby text based news aggregator. Think Reddit in your terminal.
#	This exercise will be used throughout the ruby portion of this course. 
#	Each lesson we will incrementally build a news aggregator. 
#	Lesson 4 we will create a more dynamic Teddit, and pull the latest news stories from Mashable, Digg and Reddit. 
#	But until then we will hard code stories.


#This code along demonstrates how to work with strings. 
#Each version below, adds complexity to Teddit. Only run one version at a time so you can see the difference.


#Version 1 - Welcome the user to Teddit, print the first story to the terminal.
###########
###########
#
#'Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!'
#'Story: Man raised by wolverines, then eaten Current upvotes: 4'


#Version 2 - Replace the story title and upvotes with variables.
###########
###########

# upvotes = 4
# title = "Man raised by wolverines, then eaten"
# puts "Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!"
# puts 'Story: ' + title + ' Current upvotes: ' + upvotes.to_s


#Version 3 - Add data type casting (fix casting issue).
###########
###########



#Version 4 - Use string interpolation and escape characters, polish the output.
###########
###########
# upvotes = 4
# title = "Man raised by wolverines, then eaten"
# puts 'Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!'
# puts "Story: #{title}  Current upvotes: #{upvotes.to_s}" #interpolation



#Version 5 - Adding methods
###########
###########

def greeting
	puts 'Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!'
end

def new_article(title, upvotes)
	"Story: #{title}  Current upvotes: #{upvotes.to_s}"
end

greeting
puts new_article('Man raised by wolverines, then eaten', 4)






