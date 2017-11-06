#Part A

class Student

  attr_accessor :name, :cohort

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def talk
    return "I am #{@name} of Cohort #{@cohort}, I can talk!"
  end





end
