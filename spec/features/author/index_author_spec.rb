require 'rails_helper'

describe "Index author page", type: :feature do
  
  it "should render withour error" do
    visit authors_path
  end

  it "should have a table that displays all authors full names (as links) and their homepages (as a link)" do
    visit authors_path

    Author.all.each do | author |
      expect(page).to have_link author.name, href: author_path(author)
      expect(page).to have_link author.homepage, href: author.homepageauthor
    end
  end

  it 'should have a link to create new author' do
    visit authors_path

    expect(page).to have_link 'here', href: new_author_path
  end

end