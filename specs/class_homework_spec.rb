require 'minitest/autorun'
require 'minitest/rg'
require_relative('../class_homework.rb')

class TestClassHomework < MiniTest::Test

  # PART A

  def setup
    @student = Student.new("Ian", 17)
  end

  def test_student_name
    @student
    assert_equal("Ian", @student.name)
  end

  def test_cohort
    @student
    assert_equal(17, @student.cohort)
  end

  def test_set_student_name
    @student.name = "Joe"
    assert_equal("Joe", @student.name)
  end

  def test_set_cohort
    @student.cohort = 18
    assert_equal(18 , @student.cohort)
  end

  def test_student_talk
    assert_equal("I am Ian of Cohort 17, I can talk!", @student.talk)
  end

  def test_favorite_language
    @student
    favourite = @student.fave_language("Ruby")
    assert_equal("Ian loves Ruby!", favourite)
  end


  # PART B
  def test_team_name
    team = SportsTeam.new("NY Giants", ["Eli Manning", "Odell Beckham Jr.", "Brandon Marshall", "Aldrick Rosas"], "Ben McAdoo")
    assert_equal("NY Giants", team.team_name)
  end

  def test_players
    team = SportsTeam.new("NY Giants", ["Eli Manning", "Odell Beckham Jr.", "Brandon Marshall", "Aldrick Rosas"], "Ben McAdoo")
    assert_equal(["Eli Manning", "Odell Beckham Jr.", "Brandon Marshall", "Aldrick Rosas"], team.players)
  end

  def test_coach_name
    team = SportsTeam.new("NY Giants", ["Eli Manning", "Odell Beckham Jr.", "Brandon Marshall", "Aldrick Rosas"], "Ben McAdoo")
    assert_equal("Ben McAdoo", team.coach)
  end

  def test_coach_change
    team = SportsTeam.new("NY Giants", ["Eli Manning", "Odell Beckham Jr.", "Brandon Marshall", "Aldrick Rosas"], "Ben McAdoo")
    team.coach = "Coach Carter"
    assert_equal("Coach Carter", team.coach)
  end

  def test_add_player
    team = SportsTeam.new("NY Giants", ["Eli Manning", "Odell Beckham Jr.", "Brandon Marshall", "Aldrick Rosas"], "Ben McAdoo")
    team.add_player("Ian Henderson")
    assert_equal(["Eli Manning", "Odell Beckham Jr.", "Brandon Marshall", "Aldrick Rosas", "Ian Henderson"] , team.players)
  end

  def test_player__found
    team = SportsTeam.new("NY Giants", ["Eli Manning", "Odell Beckham Jr.", "Brandon Marshall", "Aldrick Rosas"], "Ben McAdoo")
    result = team.find_player("Eli Manning")
    assert_equal("Player Eli Manning Found!", result)
  end

  def test_points
    team = SportsTeam.new("NY Giants", ["Eli Manning", "Odell Beckham Jr.", "Brandon Marshall", "Aldrick Rosas"], "Ben McAdoo")
    result = team.points("win")
    assert_equal(1, result)
  end

end

  # Extension
