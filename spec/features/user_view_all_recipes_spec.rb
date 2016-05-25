require 'rails_helper'

feature 'user view all recipes' do
  scenario 'successfully' do

    recipe = Recipe.create(name:'Macarronada', kitchen:'Italiana',
                        kind:'Prato Principal', proferably:'Massas',
                        serves:1, preparation_time:12, level:'Fácil',
                        ingredients:'Macarrão, Tomate',
                        step_by_step:'Pegue o Macarrão...')

    another_recipe = Recipe.create(name:'Feijoada', kitchen:'Brasileira',
                        kind:'Prato Principal', proferably:'Carne',
                        serves: 10, preparation_time:60, level:'Fácil',
                        ingredients:'Feijao, Linguica, Carne de porco',
                        step_by_step:'Pegue o feijao, cozinhe na pressao...')

    visit root_path

    expect(page).to have_content recipe.name
    expect(page).to have_content recipe.proferably
    expect(page).to have_content recipe.kind
    expect(page).to have_content recipe.kitchen
    expect(page).to have_content recipe.level
    expect(page).not_to have_content recipe.preparation_time
    expect(page).not_to have_content recipe.ingredients
    expect(page).not_to have_content recipe.step_by_step
    expect(page).not_to have_content recipe.serves

    expect(page).to have_content another_recipe.name
    expect(page).to have_content another_recipe.proferably
    expect(page).to have_content another_recipe.kind
    expect(page).to have_content another_recipe.kitchen
    expect(page).to have_content another_recipe.level
    expect(page).not_to have_content another_recipe.preparation_time
    expect(page).not_to have_content another_recipe.ingredients
    expect(page).not_to have_content another_recipe.step_by_step
    expect(page).not_to have_content another_recipe.serves

  end

  scenario 'and navigate to recipe details' do
    recipe = Recipe.create(name:'Macarronada', kitchen:'Italiana',
                        kind:'Prato Principal', proferably:'Massas',
                        serves:1, preparation_time:12, level:'Fácil',
                        ingredients:'Macarrão, Tomate',
                        step_by_step:'Pegue o Macarrão...')

    visit root_path

    click_on recipe.name

    expect(page).to have_content recipe.name
    expect(page).to have_content recipe.proferably
    expect(page).to have_content recipe.kind
    expect(page).to have_content recipe.kitchen
    expect(page).to have_content recipe.level
    expect(page).to have_content recipe.preparation_time
    expect(page).to have_content recipe.ingredients
    expect(page).to have_content recipe.step_by_step
    expect(page).to have_content recipe.serves
    
  end
end
