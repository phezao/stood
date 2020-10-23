require 'test_helper'

class ProfessorTest < ActiveSupport::TestCase
  def setup
    @user = User.create(
      first_name: "John",
      last_name: "Lennon",
      email: "john@beatles.com",
      password: "123456"
    )
  end
  test "testing the relationship between the professor and user" do
    professor = Professor.create(user: @user)

    assert_equal "John", professor.user.first_name
  end
end
