# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv
  attr_accessor :power, :volume, :channel

  def initialize(input_hash)
    @power = input_hash[:power] 
    @volume = input_hash[:volume] 
    @channel = input_hash[:channel] 
  end

end

class Remote
  attr_accessor :tv 

  def toggle_power(tv)
    if tv.power == true
      tv.power = false
      puts "The TV is now off."
    else
      tv.power = true
      puts "The TV is now on."
    end
  end

  def increment_volume(tv)
    tv.volume = tv.volume += 1
  end

  def decrement_volume(tv)
    tv.volume = tv.volume -= 1
  end

  def set_channel(tv, choice)
    tv.channel = choice.to_i
  end

end

sony = Tv.new(power: false, volume: 0, channel: 2)
rectangle = Remote.new

p sony.power
p rectangle.toggle_power(sony) #Now it's on
p sony.power
p rectangle.toggle_power(sony) #Now it's off again
p sony.power

5.times do rectangle.increment_volume(sony) #Volume is 5
end
p sony.volume

3.times do rectangle.decrement_volume(sony) #Volume is 2
end
p sony.volume

rectangle.set_channel(sony, 35) #Channel is 35
p sony.channel
