require 'rails_helper'

RSpec.describe GymClass, type: :model do
    it { should belong_to(:instructor) }
    it { should belong_to(:user) }

    it { should validate_presence_of(:classTime) }
end