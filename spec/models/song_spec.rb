require 'rails_helper'

RSpec.describe Song, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:length)}
    it {should validate_presence_of(:track_number)}
  end

  describe 'relationships' do
    it {should belong_to(:album)}
  end
end
