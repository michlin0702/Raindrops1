*RAINDROPS*

*GAME ALGORITHM*

- Create a start screen with "BEGIN" button, once clicked, game starts

- Create a score tracking variable

- Create a raindrop array

	- Set number of desired raindrops

- Create a catcher class

	- Catcher serves to "catch" falling raindrops

	- Set catcher x coordinate to follow mouse

- Create a raindrop
	
	- Create functions to control location, velocity, and acceleration

		- Location: at top of screen
		
		- Velocity: random value between 0 and 2

		- Acceleration: random value between 0 and 1

- Create an umbrella array

- Create three umbrellas to serve as lives by creating three different location vectors

- One raindrop will fall

	- Next raindrop set to fall after set time interval

- Create function to check to see if raindrop touches catcher

- If falling raindrops caught by moving catcher,
		
	- Player's score will increase

	- Raindrop will disappear

- If falling raindrops not caught by moving catcher,

	- One life will be lost

- If catcher misses three raindrops, game will be over

- Create a game over screen with "START OVER" button

- Once button is clicked, new game begins, lives reset to 3, and score resets to 0


*IMPORTANT QUESTIONS/PROBLEMS*

- I cannot find a way to make the umbrellas disappear one at a time without making the code more complicated than necessary... 

  As one raindrop falls off the screen, one umbrella should disappear to indicate the amount of lives the player has left



*WHAT TO ADD TO GAME*

- Will have levels increasing with difficulty

- Will have set amount of lives

- Must catch certain amount of raindrops in certain amount of time

- If complete level within time, will receive bonus

	- Storm cloud appears and more raindrops appear, allowing player chance to gain more points

- If running out of time to complete level, the sun will start to appear to "dry" the raindrops, decreasing player chances to complete level

- If failed at completing level within time, will lose life

- If lost all lives, GAME OVER.



	  
