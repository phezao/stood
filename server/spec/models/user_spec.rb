# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:student) { Student.create }
  describe '.create' do
    context 'without an email' do
      subject(:user) do
        described_class.new(password_digest: 123456, role_id: student.id, role_type: 'Student')
      end
      it { is_expected.to be_invalid }
    end

    context 'without a password' do
      subject(:user) do
        described_class.new(email: 'example@gmail.com', role_id: student.id, role_type: 'Student')
      end
      it { is_expected.to be_invalid }
    end
  end

  describe '#role' do
    subject(:user) do
      described_class.new(
        email: 'example@gmail.com',
        password_digest: 123456,
        role_type: 'Student',
        role_id: student.id
      )
    end
    it 'returns a role type, either Student or Professor instance' do
      expect(user.role).to eql(student)
    end
  end
end
