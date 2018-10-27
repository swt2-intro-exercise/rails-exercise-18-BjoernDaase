require 'rails_helper'

 describe "Author model", type: :model do

   before :each do
    @author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
  end

   it "should create new author with first name, last name and homepage" do
    expect(@author.first_name).to eq("Alan")
    expect(@author.last_name).to eq("Turing")
    expect(@author.homepage).to eq("http://wikipedia.org/Alan_Turing")
  end

   it "should have a name which combines first name and last name" do
    expect(@author.name).to eq("Alan Turing")
  end

end 