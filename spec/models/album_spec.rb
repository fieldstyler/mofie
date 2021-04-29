require 'rails_helper'

RSpec.describe Album, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:genre)}
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:release_date)}
    it {should validate_presence_of(:artist)}
  end

  describe 'relationships' do
    it {should have_many(:songs)}
  end
end
