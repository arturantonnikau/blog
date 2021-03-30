require 'rails_helper'

RSpec.describe Comment do
  describe "validations" do
    it { should validate_length_of(:body).is_at_most(4000)}
  end
end