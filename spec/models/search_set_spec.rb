require 'spec_helper'

describe SearchSet do
  before do
    @user = User.new(email: "test@user.org")
    user_id = @user.save
    @searchSet = SearchSet.new(name: "Example search")
    @searchSet.user_id = user_id
  end

  subject { @searchSet }

  it { should respond_to :name }
  it { should be_valid }

  describe "when name is not present" do
    before { @searchSet.name = " " }
    it { should_not be_valid }
  end

  describe "when user_id is not present" do
    before { @searchSet.user_id = nil }
    it { should_not be_valid }
  end
end
