require_relative '../user.rb'
require 'rspec'

describe User do
  before do
    @user = User.new('thomas07vt')
  end

  it 'calculates users score' do
    expect(@user.score).to eq(113)
  end

end

