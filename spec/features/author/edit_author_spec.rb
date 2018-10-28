describe "Edit author page", type: :feature do

   it "should render without error" do
    @author = FactoryBot.create :author
    visit edit_author_path(@author)
  end

  it "should save changes" do
    @author = FactoryBot.create :author
    visit new_author_path(@author)
    page.fill_in 'author[first_name]', with: 'Joe'
    page.fill_in 'author[last_name]', with: 'Editing'
    page.fill_in 'author[homepage]', with: 'http://joe.edit'
    find('input[type="submit"]').click
    expect(@author.first_name).to eq('Joe')
    expect(@author.last_name).to eq('Editing')
    expect(@author.homepage).to eq('http://joe.edit')
  end
end