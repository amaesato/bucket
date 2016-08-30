require 'rails_helper'

RSpec.describe Bucket, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name)}
    it { should belong_to(:user)}
    it { should have_one(:list)}
  end

  describe ".theme" do
    it "returns themes in any order" do
      themes = Bucket.theme
      expect(themes).to match_array(themes)
    end
  end
end
