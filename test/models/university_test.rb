require 'test_helper'

class UniversityTest < ActiveSupport::TestCase
  def setup
    @user = User.create(
      first_name: "John",
      last_name: "Lennon",
      email: "john@beatles.com",
      password: "123456"
    )
  end
  test "testing the relationship between the university and professor" do
    insper = University.create(name: "Insper")

    professor = Professor.create(
      user: @user,
      university: insper
    )

    assert_equal "Insper", professor.university.name
  end
end
