# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
    it { should have_many(:gym_classes).dependent(:destroy) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
end
