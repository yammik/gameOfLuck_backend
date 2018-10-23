APIs:
- World Population
- FluTrack
- OnWater
- Google Maps Street View


Store data from external API; save into our db to create our own API
Game statistics: fail rate depending on region, user stat for fail games
#Models: user, country, steps
  1. User: has_many steps Attributes: [:name, :age, :gender, :location, :no_steps, :living]
  2. Country: has_many steps. Attributes: [:mortality_rate, :avg_longevity, :warring, :development_stage]
  3. Steps: belongs_to user, belongs_to country. Get regional data from country. Get health data from user. Generate likelihood of ailments/accidents

#View: single page app
  Google Maps Street View in DOM at center
  Side panel to display stats and goal
  Side panel to display events (e.g. 'caught flu', 'got mugged')

#Controller
  Receive user input
  Generate User and Steps

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Idea: survival game
You are a person. Nothing is known about you except your age and gender. You are dropped off in a random country.
Your goal is to navigate yourself to the nearest safe zone, which will differ depending on your spawn point.
You have a limited number of steps to reach the goal, based on your status in the particular social climate, as well as the flu trends in your spawn point.
If you are really unlucky, you will be dropped off in water instead of land, at which point you will drown.

#Logistics
Give name

Randomize LANG, LONG (= country of origin), gender, age
  Limit spawn point to where street view is available
Generate user stats - use population data on the spawn point
  Life expectancy
  Diabetes?

Use Flu tracking API to randomly give user the flu (which takes off HP everytime there is a movement (like Pokemon))

Variable endpoint based on something about the spawn country
  Based on state of development in the country.
      e.g. in NYC you have to find the nearest starbucks (= life is easier here, often taken for granted)
           in Syria you have to find the nearest medical facility
