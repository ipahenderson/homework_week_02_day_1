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

  def add_player(name)
    @players.push(name)
  end

  def find_player(name)
    for player in @players
      return "Player #{name} Found!" if player == name
    end
  end

  def points(result)
    @points += 1 if result == "win"
  end


end

# Extension

class Library

  attr_accessor :books

  def initialize(input_books)
    @books = input_books
  end



  def list_books
    return @books
  end

  def list_target_book(books, title)
    for book in books
      return book if book[:title] == title
    end
  end

  def rental_details(books, title)
    for book in books
      return book[:rental_details] if book[:title] == title
    end
  end


  def add_book(books, title)
    new_books =   {
    title: title,
    rental_details: {
     student_name: "",
     date: ""
    }
  }
    books << new_books
  end

  def rental_ammend(books, title, new_rental)
    for book in books
      if book[:title] == title
      book[:rental_details] = new_rental
      end
    end
  end

end
