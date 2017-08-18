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
    expect(page).to have_content 'Testing infrastructure working!'
  end

  scenario 'expects 2 players to fill in their names' do
    sign_in_and_play
    expect(page).to have_content 'Nick'
  end

  scenario 'view hit points of both players' do
    sign_in_and_play
    expect(page).to have_content 'Nick: 100HP'
    expect(page).to have_content 'Eli: 100HP'
    save_and_open_page
  end

  scenario 'attack player 1' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Nick: 90HP'
    expect(page).to have_content 'Eli: 100HP'
  end

  scenario 'get confirmation when you have attacked player 1' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'You have attacked player 1!'
  end
end

# #  In spec/features, add a new Capybara feature test
# that expects players to fill in their names (in a form),
# submit that form, and see those names on-screen
