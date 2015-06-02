require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('The to path', {:type => :feature}) do
  it('processes a users input and return a task') do
    visit('/')
    fill_in("new_description", :with => "wash the car.")
    click_button("Add Task!")
    expect(page).to have_content("Your task has been saved!")
  end
end
