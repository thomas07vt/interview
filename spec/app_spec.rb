require_relative '../app.rb'
require 'rspec'

describe App do
  before do
    @app = App.new('thomas07vt')
  end

  it 'calculates users score' do
    expect(@app.score).to eq(113)
  end

end

