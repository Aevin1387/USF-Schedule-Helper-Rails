require 'spec_helper'

describe Search do
  before do
    @user = User.new(email: "test@user.org")
    user_id = @user.save
    @search = Search.new(name: "Example search")
    @search.user_id = user_id
  end

  subject { @search }

  it { should respond_to :name }
  it { should be_valid }

  describe "when name is not present" do
    before { @search.name = " " }
    it { should_not be_valid }
  end

  describe "when user_id is not present" do
    before { @search.user_id = nil }
    it { should_not be_valid }
  end
end
