RSpec.describe Person do
  describe "enum" do
    it { is_expected.to define_enum_for(:pronoun).with_values(mr: 0, ms: 1, dr: 2) }
  end
end
