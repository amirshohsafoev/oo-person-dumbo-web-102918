# your code goes here
class Person
#########################
# reader and getter methods
  attr_reader :name
  attr_accessor :bank_account
  def initialize(name, bank_account = 25, happiness_points = 8, hygiene_points = 8)
    @name = name
    @happiness_points = happiness_points
    @hygiene_points = hygiene_points
  end

  def happiness_points=(arg)
    if arg >= 0 && arg <= 10
    @happiness_points = arg
  end
end


  def happiness_points
    @happiness_points
  end
  def hygiene_points=(arg)
    if arg >= 0 && arg <= 10
    @hygiene_points = arg
  end
end

  def hygiene_points
    @hygiene_points
  end
#####################################################
# class Person functions
  def clean?
    if @hygiene_points > 7
      true
    else
      false
    end
end

  def happy?
    if @happiness_points > 7
      true
    else
      false
    end
  end

  def get_paid

  end

  def take_bath

  end

  def work_out

  end

  def call_friend

  end

  def start_conversation

  end
##########################################################
end
