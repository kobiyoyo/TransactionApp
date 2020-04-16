require 'rails_helper'

feature 'create group' do 
    let(:user){FactoryBot.create(:user,username:'chubi')}
	scenario 'successfully'  do
		visit login_path
		fill_in 'Username' ,with: user.username
		within(".control") do
            click_on("Login")
        end
		expect(page).to have_content('Successfully logged in.')
		click_on('All groups')
		click_on('Create new')
		fill_in 'Name',with: 'Cars'
		fill_in 'Icon',with: '<i class="fa fa play" />'
		click_on('Create Group')
		expect(page).to have_content('Group successfully created.')

	end
	scenario 'unsuccessfully (name = nil)'  do
		visit login_path
		fill_in 'Username' ,with: user.username
		within(".control") do
            click_on("Login")
        end
		expect(page).to have_content('Successfully logged in.')
		click_on('All groups')
		click_on('Create new')
		fill_in 'Icon',with: '<i class="fa fa play" />'
		click_on('Create Group')
		expect(page).to have_content("Name can't be blank")

	end
	scenario 'unsuccessfully (icon = nil)'  do
		visit login_path
		fill_in 'Username' ,with: user.username
		within(".control") do
            click_on("Login")
        end
		expect(page).to have_content('Successfully logged in.')
		click_on('All groups')
		click_on('Create new')
		fill_in 'Name',with: 'Cars'
		click_on('Create Group')
		expect(page).to have_content("Icon can't be blank")

	end
end
