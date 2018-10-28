require 'rails_helper'

RSpec.describe Paper, type: :model do

  it "should require that the title is not empty" do
    @paper = Paper.new(title: nil, venue: "Berlin", year: 1984)
    expect(@paper).to_not be_valid
  end

  it "should require that the venue is not empty" do
    @paper = Paper.new(title: "Example paper", venue: nil, year: 1984)
    expect(@paper).to_not be_valid
  end

   it "should require that the year is not empty" do
    @paper = Paper.new(title: "Example paper", venue: "Berlin", year: nil)
    expect(@paper).to_not be_valid
  end

  it "should require that the year is an integer" do
    @paper = Paper.new(title: "Example paper", venue: "Berlin", year: "nineteen eighty four")
    expect(@paper).to_not be_valid
  end

  it 'should have a empty authors list' do
    @paper = @paper = Paper.new(title: "Example paper", venue: "Berlin", year: 1984)
    expect(@paper.authors).to eq([])
  end

end
