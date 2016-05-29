require 'rails_helper'

feature 'Admin creates meal' do
 scenario 'successfully' do
  meal = Meal.new(name:'Sobremesa')

  visit new_meal_path

  fill_in 'Refeição',             with: meal.name

  click_on 'Ir para Cadastro'

  expect(page).to have_content meal.name

  meal2 = Meal.new(name:'Sobremesa')

  visit new_meal_path

  fill_in 'Refeição',             with: meal2.name

  click_on 'Ir para Cadastro'

  expect(page).to have_content meal2.name
 end
end
