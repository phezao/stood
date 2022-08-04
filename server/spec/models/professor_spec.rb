# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Professor, type: :model do
  let(:professor) { described_class.create }
  describe '#user' do
    subject do
      professor.create_user(email: 'example@gmail.com', password_digest: 123456)
      professor.user
    end

    it { is_expected.to be_an_instance_of(User) }
  end
end
