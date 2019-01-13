require 'rails_helper'

# Test Suite
RSpec.describe Todo, type: :model do
  # Association Test
  # Establish 1:m relationship
  it { should have_many(:items).dependent(:destroy) }
  # Valication test
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }

end
