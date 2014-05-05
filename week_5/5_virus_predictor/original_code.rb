# U2.W5: Virus Predictor

# I worked on this challenge myself.

# EXPLANATION OF require_relative
#Functionally, it loads another file (unless otherwise stated, in the same directory) that
#the class can extract information from. Essentially, ruby considers the two files
#part of the same file, except it is useful because they can be edited independently.
#
#state_data appears to be a nested hash with two different examples of has syntax.
#The state name separates with a => the second hash, which uses a different
#syntax, one that does not appear to need quotes to denote strings, it seems
#to be mostly key based.
#
#

require_relative 'state_data'

class VirusPredictor

  #Initializes the data from within state_data and assigns them instance
  #variable names, so they will be accessible from anywhere in the method.
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  #Calls two other functions from within the class, and passes variables
  #through them. Superfluous as instance variables can be referenced
  #from anywhere within a class once defined.
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

  #Makes the below methods private, which means they can only be called from within
  #the class, and cannot be called outside of it (like virus_effects can).
  private

  #Predicts number of people who will die in each state the method is called on.
  def predicted_deaths()
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

  #Predicts speed of virus spread for state it is called on. Uses graded calculation
  #for virus density.
  def speed_of_spread() #in months
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

STATE_DATA.each do | a, b | 
a = VirusPredictor.new(a, STATE_DATA[a][:population_density], STATE_DATA[a][:population], STATE_DATA[a][:region], STATE_DATA[a][:regional_spread]) 
a.virus_effects
end

=begin
 
I found this to be an enjoyable challenge. I definitely learned a few interesting tricks, including
the existence of private methods within classes, the functionality of "require relative," and
how the "do" method workd. I really like it as a way to do loops, although, as a creature of
habit, I still kind of like the "for i in x" formulation. These exercises have mostly taught me
how to use the unique features of ruby pretty well, and for that I am grateful.

=end
