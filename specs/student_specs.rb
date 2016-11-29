require ('minitest/autorun')
require_relative('../student.rb')

# class StudentSpec < MiniTest::Test

# def test_can_create_student 
#   student = Student.new("Amy", 9, "Ruby")
#   assert_equal(Student, student.class)
# end

# def test_can_get_student_name
#   student = Student.new("Amy", 9, "Ruby")
#   assert_equal("Amy", student.name)
# end

# def test_can_get_cohort_number
#   student = Student.new("Amy", 9, "Ruby")
#   assert_equal(9, student.cohort)
# end

# def test_can_student_talk
#   student = Student.new("Amy", 9, "Ruby")
#   assert_equal("I can talk!", student.talk)
# end

# def test_favourite_programming_language
#   student = Student.new("Amy", 9, "Ruby")
#   assert_equal("My favourite language is Ruby!", student.favourite_language)
# end
# end

class TeamSpec < MiniTest::Test

  def test_can_create_team
    team = Team.new("TSM", ["Bjergson, Hauntzer, Svenskeren, Doublelift, Biofrost"], "LocoDoco", 0)
    assert_equal(Team, team.class)
  end

def test_can_return_team
  team = Team.new("TSM", ["Bjergson, Hauntzer, Svenskeren, Doublelift, Biofrost"], "LocoDoco", 0)
  assert_equal("TSM", team.team)
end

def test_can_return_players
  team = Team.new("TSM", ["Bjergson, Hauntzer, Svenskeren, Doublelift, Biofrost"], "LocoDoco", 0)
  assert_equal(["Bjergson, Hauntzer, Svenskeren, Doublelift, Biofrost"], team.players)
end

def test_can_return_coach
  team = Team.new("TSM", ["Bjergson, Hauntzer, Svenskeren, Doublelift, Biofrost"], "LocoDoco", 0)
  assert_equal("LocoDoco", team.coach)
end

def test_can_change_coach_name
  team = Team.new("TSM", ["Bjergson, Hauntzer, Svenskeren, Doublelift, Biofrost"], "LocoDoco", 0)
  team.change_coach_name("Scarra")
  assert_equal("Scarra", team.coach)
end

def test_add_new_player
  team = Team.new("TSM", ["Bjergson, Hauntzer, Svenskeren, Doublelift, Biofrost"], "LocoDoco", 0)
  team.add_new_player("Sneaky")
  assert_equal("Sneaky", team.players.last())
end

def test_find_player
  team = Team.new("TSM", ["Bjergson, Hauntzer, Svenskeren, Doublelift, Biofrost"], "LocoDoco", 0)
  team.find_player("Biofrost")
  assert_equal(true, team.players.index("Biofrost")) #I DONT KNOW WHY I GET  NIL FOR THIS
end

def test_win_or_lose
  team = Team.new("TSM", ["Bjergson, Hauntzer, Svenskeren, Doublelift, Biofrost"], "LocoDoco", 0)
  team.win_or_lose("win")
  assert_equal()
end

end