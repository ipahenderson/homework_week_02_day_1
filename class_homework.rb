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

  def fave_language(value)
    return "#{@name} loves #{value}!"
  end

end

#Part B

class SportsTeam
  attr_reader :team_name, :players
  attr_accessor :coach

  def initialize(input_name, input_players, input_coach)
    @team_name = input_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  def team_name
    return @team_name
  end

  def players
    return @players
  end

  def coach
    return @coach
  end


end
