require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it { should have_many(:buckets)}
  end

# Need help with dependent destroy validation
  # it "should be destroyed when user is destroyed" do
  #   user = User.create(first_name: 'Ann', last: 'Hall', username: 'amaesato', email: 'hall@gmail.com')
  #   bucket = Bucket.
  #
  #   it { expect(user).to have_many(:buckets).dependent(:destroy) }
  # end
end
