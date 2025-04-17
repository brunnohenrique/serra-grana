RSpec.describe Income do
  context "associations" do
    it { is_expected.to belong_to(:person) }
  end
end
