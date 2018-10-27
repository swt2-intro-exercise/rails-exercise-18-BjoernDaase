require 'rails_helper'

 describe "Author model", type: :model do

   it "should create new author with first name, last name and homepage" do
    @author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
    expect(@author.first_name).to eq("Alan")
    expect(@author.last_name).to eq("Turing")
    expect(@author.homepage).to eq("http://wikipedia.org/Alan_Turing")
  end

   it "should have a name which combines first name and last name" do
    @author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
    expect(@author.name).to eq("Alan Turing")
  end

  it "should require that the last name is not empty" do
    @author = Author.new(first_name: "Alan", last_name: nil, homepage: "http://wikipedia.org/Alan_Turing")
    expect(@author).to_not be_valid
  end

end 