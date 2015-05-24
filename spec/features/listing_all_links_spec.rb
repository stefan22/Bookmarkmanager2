require 'spec_helper'

feature 'User browses the list of links' do

  before(:each) do
    Link.create(url:"http://www.makersacademy.com", title: 'Makers Academy',
    tags: [Tag.first_or_create(text: 'education')])
    Link.create(url:"http://www.google.com", title:"Google",
    tags: [Tag.first_or_create(text: 'search')])
    Link.create(url:"http://www.yahoo.com", title:"Yahoo",
    tags: [Tag.first_or_create(text: 'search')])
    Link.create(url:"http://www.bing.com", title:"Bing",
    tags: [Tag.first_or_create(text: 'search')])
  end

  scenario 'when opening home page' do
    visit '/'
    expect(page).to have_content('Makers Academy')
    expect(page).to have_content('Google')
    expect(page).to have_content('Yahoo')
    expect(page).to have_content('Bing')
  end

  scenario 'filtered by a tag' do
    visit '/tags/search'
    expect(page).not_to have_content("Makers Academy")
    expect(page).to have_content("Google")
    expect(page).to have_content("Yahoo")
    expect(page).to have_content("Bing")

  end

end
