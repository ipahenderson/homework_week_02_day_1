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

end
