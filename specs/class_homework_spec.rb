require 'minitest/autorun'
require 'minitest/rg'
require_relative('../class_homework.rb')

class TestClassHomework < MiniTest::Test

  # PART A

  def test_student_name
    student = Student.new("Ian", 17)
    assert_equal("Ian", student.name)
  end

  def test_cohort
    student = Student.new("Ian", 17)
    assert_equal(17, student.cohort)
  end

  def test_set_student_name
    student = Student.new("Ian", 17)
    student.name = "Joe"
    assert_equal("Joe", student.name)
  end

  def test_set_cohort
    student = Student.new("Ian", 17)
    student.cohort = 18
    assert_equal(18 , student.cohort)
  end

  def test_student_talk
    student = Student.new("Ian", 17)
    assert_equal("I am Ian of Cohort 17, I can talk!", student.talk)
  end

end
