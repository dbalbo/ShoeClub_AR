require('capybara/rspec')
require('./app')
require('spec_helper')
Capybara.app == Sinatra::Application
set(:show_exceptions, false)


describe('the add a store path') do
	it('adds a new store to the list of stores') do
		visit('/')
		fill_in('enter new store')
		click_button('Add a Store to ShoeClub')
		expect(page).to have_content("The Shoe Store")
	end
end

describe('the add shoe brands to a store path') do
	it('follows the store link to an individual store page') do
		visit('/')
		fill_in('add new brand here', with: 'Jimmy Choo')
		click_button("Add a Brand")
		expect(page).to have_content('Jimmy Choo')
	end
end

describe('update store name path') do
	it('follows the store link to the individual store page') do
	visit('/')
	fill_in('rename this store here')
	click_button("Update Store Name")
	expect(page).to have_content("New Shoe Store")
	end
end

describe('delete store path') do
	it('follows the store link to the individual store page') do
		visit('/')
		click_button("Delete Store")
		expect(page).to have content("Welcome to ShoeClub!")
	end
end