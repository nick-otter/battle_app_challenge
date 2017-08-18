require_relative '../../app.rb'
require_relative 'web_helpers.rb'
require 'capybara-screenshot/rspec'
require 'launchy'


# describe 'testing' do
#   it 'checks that homepage says Testing infrastructure working' do
#     visit '/'
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'feature test' do
  scenario 'checks that homepage says Testing infrastructure working' do
    visit '/'
    test1
  end

  scenario 'expects 2 players to fill in their names' do
    sign_in_and_play
    test2
  end

  scenario 'view hit points of both players' do
    sign_in_and_play
    test3
    save_and_open_page
  end


  def test1
    expect(page).to have_content 'Testing infrastructure working!'
  end

  def test2
    expect(page).to have_content "Nick"
  end

  def test3
    expect(page).to have_content "Nick: 100HP\nEli: 100HP"
  end

end


# #  In spec/features, add a new Capybara feature test
# that expects players to fill in their names (in a form),
# submit that form, and see those names on-screen
