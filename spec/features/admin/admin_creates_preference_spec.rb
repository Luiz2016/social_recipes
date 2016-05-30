require 'rails_helper'

feature 'Admin creates preference' do
  scenario 'successfully' do
    preference = Preference.new(name: 'Vegetariana')

    visit new_preference_path

    fill_in 'Preferencia',      with: preference.name

    click_on 'Ir para Cadastro'

    expect(page).to have_content preference.name

    preference2 = Preference.new(name: 'Diet')

    visit new_preference_path

    fill_in 'Preferencia',      with: preference2.name

    click_on 'Ir para Cadastro'

    expect(page).to have_content preference2.name
  end
end
