# your code goes here
require 'pry'
class Person
#########################
# reader and getter methods
  attr_reader :name
  attr_accessor :bank_account
  def initialize(name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25
  end

  def happiness=(arg)
    @happiness = arg
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end


  def happiness
    @happiness
  end
  def hygiene=(arg)
    @hygiene = arg
    @hygiene = 10 if @hygiene >10
    @hygiene = 0 if @hygiene < 0
end

  def hygiene
    @hygiene
  end
#####################################################
# class Person functions
  def clean?
    if @hygiene > 7
      true
    else
      false
    end
end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene+=4
    if hygiene >= 10
      @hygiene = 10
    end
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness +=2
    if happiness >= 10
      @happiness = 10
    end
    self.hygiene-=3
    if hygiene < 0
      @hygiene = 0
    end
    "♪ another one bites the dust ♫"
  end

  def call_friend(arg)
self.happiness += 3
if happiness >= 10
  @happiness = 10
end
arg.happiness += 3
if arg.happiness >= 10
  arg.happiness = 10
end
"Hi #{arg.name}! It's #{@name}. How are you?"
  end

  def start_conversation(arg, topic)
    #binding.pry
    chat_group = [self, arg]
    if topic == "politics"
      chat_group.each do |person|
        person.happiness -=2
        if person.happiness < 0
          person.happiness = 0
        end
      end
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      chat_group.each do |person|
        person.happiness +=1
        if person.happiness > 10
          person.happiness = 10
        end
      end
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
##########################################################
end

#  amir = Person.new("amir")
#  carlo = Person.new("carlo")
#  carlo.call_friend(amir)
# binding.pry
# 0
