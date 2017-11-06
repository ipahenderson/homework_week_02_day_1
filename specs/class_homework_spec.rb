require 'minitest/autorun'
require 'minitest/rg'
require_relative('../class_homework.rb')

class TestClassHomework < MiniTest::Test


  def setup
    @student = Student.new("Ian", 17)
    @team = SportsTeam.new("NY Giants",
      ["Eli Manning","Odell Beckham Jr.",
        "Brandon Marshall", "Aldrick Rosas"],
       "Ben McAdoo")
    @books = [
           {
             title: "lord_of_the_rings",
             rental_details: {
               student_name: "Jeff",
               date: "01/12/16"
             },
           },
           {
             title: "fight_club",
             rental_details: {
               student_name: "Matt",
               date: "12/08/14"
             }
           },
           {
             title: "bleak_house",
             rental_details: {
               student_name: "Ian",
               date: "15/11/16"
             }
           },
           {
             title: "war_and_peace",
             rental_details: {
               student_name: "Upul",
               date: "16/01/12"
             }
           }
         ]
    @library = Library.new(@books)
  end
  # PART A


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
    assert_equal("NY Giants", @team.team_name)
  end

  def test_players
    assert_equal(["Eli Manning", "Odell Beckham Jr.", "Brandon Marshall", "Aldrick Rosas"], @team.players)
  end

  def test_coach_name
    assert_equal("Ben McAdoo", @team.coach)
  end

  def test_coach_change
    @team.coach = "Coach Carter"
    assert_equal("Coach Carter", @team.coach)
  end

  def test_add_player
    @team.add_player("Ian Henderson")
    assert_equal(["Eli Manning", "Odell Beckham Jr.", "Brandon Marshall", "Aldrick Rosas", "Ian Henderson"] , @team.players)
  end

  def test_player__found
    result = @team.find_player("Eli Manning")
    assert_equal("Player Eli Manning Found!", result)
  end

  def test_points
    result = @team.points("win")
    assert_equal(1, result)
  end


  # Extension

  def test_list_books
  assert_equal(@books, @library.list_books)
  end

  def test_list_book_details
    book = @books[1]
    title = "fight_club"
    assert_equal(@library.list_target_book(@books,title), book)
  end


end
