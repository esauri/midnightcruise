Erick Sauri
# midnightcruise
Rolling on Random

List of user functionality:
Sit back
Play some relaxing music
Enjoy the night ride

Reasoning behind design choices:

For this assignment I decided to create a spaceship that wanders a nocturnal world’s surface so that we can observe some of the landscape of the planet as well as whatever wonders (and horrors) like in outer space. For this reason my sketch has that horizontally movement feeling. I also decided to showcase some of the world’s weather by adding in blizzards and drizzles. The user can see what lies beyond the planet and for this I added several stars, a ringed planet, UFOs, the Death Star and the Flying Spaghetti monster.

Brief description of special features:
The rocket’s fire bursts back and forth creating a sense of movement. This was done by altering the location at certain points. The mountains were made using Perlin noise around half of the height of the program. The stars are randomly generated and when their location in the x-axis is less than 0 they reset in a  new random position.

Another random feature is the weather. The program flips a coin every 15 seconds or so and chooses either a snowstorm or rainstorm. The snow moves downwards in the y-axis while oscillating in the x-axis. The rain uses Perlin noise in the x-axis so in addition to falling it also skews to the left to give it cohesion with the moving landscape.

At certain intervals during the sketch a random object will appear on the sketch. Either a ringed planet, a ufo, the Death Star, of the Flying Spaghetti Monster. They are chosen using directed random. with the first three having a 30% chance the the Flying Spaghetti Monster only 10%. They are given a random y position from 0 to half the height and they also move using Perlin noise.
