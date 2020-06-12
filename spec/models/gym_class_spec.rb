# **
# frozen_string_literal: true

# Module
# *

require 'rails_helper'

RSpec.describe GymClass, type: :model do
  it { should belong_to(:gym_instructor) }
  it { should belong_to(:user) }

  it { should validate_presence_of(:classTime) }
end
