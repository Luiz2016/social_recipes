require 'rails_helper'

feature 'Admin creates kitchen' do

 scenario 'successfully' do
  kitchen = Kitchen.new(name:'Italiana')

   visit new_kitchen_path

    fill_in 'Cozinha',             with: kitchen.name

    click_on 'Ir para Cadastro'

   expect(page).to have_content kitchen.name

  kitchen2 = Kitchen.new(name:'Mexicana')

    visit new_kitchen_path

    fill_in 'Cozinha',            with: kitchen2.name

    click_on 'Ir para Cadastro'

    expect(page).to have_content kitchen2.name

    end
end
