# class Student 

# def initialize(student_name, cohort, language)
#   @student_name = student_name
#   @cohort = cohort
#   @language = language
# end

# def name()
#   return @student_name
# end

# def cohort()
#   return @cohort
# end

# def talk()
#   return "I can talk!"
# end

# def favourite_language
#   return "My favourite language is #{@language}!"
#   end 
# end

class Team
  attr_reader :team, :players, :coach

def initialize(team, players, coach)
  @team = team 
  @players = players
  @coach = coach
  @win = win

end

def change_coach_name(new_coach)
  @coach = new_coach
end

def add_new_player(new_player)
  @players << new_player
end

def find_player(player)
  @players.index(player)
end

def win_or_lose(win)

end

end