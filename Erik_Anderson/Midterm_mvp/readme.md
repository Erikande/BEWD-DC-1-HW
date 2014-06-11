#The Echo Nest playlist creator
##mvp version

My midterm project is based on the [Echo Nest API](http://www.programmableweb.com/api/echo-nest) to create a static playlist from a user submitted list (array) of artists. 
The end result after the user enters all of their artists, this artist array, is sent to the 'Echo Nest' Playlist endpoint -- http://developer.echonest.com/api/v4/playlist/static?api_key=G3ABIRIXCOIGGCCRQ.

After this artist array is submitted to the Echo Nest playlist endpoint, the CLI will retrun a playlist that combines artists supplied. 

The application uses the `main.rb` as the driver.
And has the `playlist.rb` as the `Playlist` class, to get user's artist choices, and sends the artist choices to the endpoint and then prints the generated playlist to the CLI.

This application is a mvp version, as I intended to have one more class that would be the `Api` class that would process the artist array via the Echo Nest endpoint. I will work more on this application, to get this desired class, later. 

I have added inline comments, with in all of the application files to help decern what the code is doing.

Thanks. 