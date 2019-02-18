require 'rails_helper'

RSpec.describe Note, type: :model do
  context "Regarding Validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
  end
end
