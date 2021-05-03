require 'rails_helper'

RSpec.describe Lyric, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:full_lyrics)}
  end

  describe 'relationships' do
    it {should belong_to(:song)}
  end
end
