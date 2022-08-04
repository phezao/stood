# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Student, type: :model do
  let(:student) { described_class.create }
  describe '#user' do
    subject do
      student.create_user(email: 'example@gmail.com', password_digest: 123456)
      student.user
    end
    it { is_expected.to be_an_instance_of(User) }
  end
end
