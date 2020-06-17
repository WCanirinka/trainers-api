require 'rails_helper'

RSpec.describe GymInstructor, type: :model do
  it { should have_many(:gym_classes).dependent(:destroy) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:instImage) }
  it { should validate_presence_of(:trainingType) }
  it { should validate_presence_of(:gymName) }
  # it { should validate_presence_of(:gymImage) }
end
