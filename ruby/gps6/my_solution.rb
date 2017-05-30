# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative is a subset of require.
#r_r = to the location you are in.
#r = full address
require_relative 'state_data'

class VirusPredictor

#Initailizes all the instances
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#plugs in the correct info for other methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
#Predictes deaths uses population density to calculate the weight of the float to multiple with population. prints out "#{@state} will lose #{number_of_deaths} people in this outbreak".
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#takes in population density to select the seep the infection will spread. prints " and will spread across the state in #{speed} months.\n\n"
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |states, info|
  new_state = VirusPredictor.new(states, info[:population_density], info[:population] )
  new_state.virus_effects
end



#new_state = VirusPredictor.new(  )

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end


#=======================================================================
# Reflection Section
=begin

With hashes, between key to value you are able to use both the hash rocket '=>', or if the key is a symbol (i.e. :key) you can use the shorthand of 'key:'. In the state_data hash, the keys using the hash rocket are strings.

As we wrote about require vs require_relative before:
Require_relative is a subset of require.
The address for require_relative is local/relative i.e. r_r = to the location you are in.
The address when just using require is the full_adress on your computer i.e. r = full address

The way in which we chose to itierate through the entire hash was the .each method. You can also summon specific keys to call their values. I have found any other strategies for addressing this yet (timeboxed myself on this question), and I know I've researched this before...being unable to use an index to summon a key/value, loops seem kind of useless in this regard.

The plug-ins of the instance variables was redundant and unnecessary. However, I did like the division between the predicted_deaths and speed_of_spread methods.

This assignment was great for thinking about how to call specific values in nested hashes. (Or "hashy-hashes")
I also really enjoy doing refactoring work on pre-written code. I'd like it if we had more refactor assignments.

end