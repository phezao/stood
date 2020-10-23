require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.create(
      first_name: "John",
      last_name: "Lennon",
      email: "john@beatles.com",
      password: "123456"
    )
  end
  test "testing the relationship between the user and the professor profile" do
    professor_profile = Professor.create(user: @user)

    assert_not_nil @user.professor
  end

  test "testing the relationship between the user and the appointment" do
    appointment = Appointment.create!(user: @user)

    assert_equal 1, @user.appointments.size
  end
end
