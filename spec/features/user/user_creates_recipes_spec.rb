require 'rails_helper'
feature 'User creates recipe' do
  scenario 'successfully' do
    recipe = Recipe.new(name: 'Macarronada', kitchen: 'Italiana',
                        kind: 'Prato Principal', proferably: 'Massas',
                        serves: 1, preparation_time:12, level: 'Fácil',
                        ingredients: 'Macarrão, Tomate',
                        step_by_step: 'Pegue o Macarrão...')

    visit new_recipe_path

    fill_in 'Nome',               with: recipe.name
    fill_in 'Cozinha',            with: recipe.kitchen
    fill_in 'Tipo',               with: recipe.kind
    fill_in 'Preferencia',        with: recipe.proferably
    fill_in 'Porções',            with: recipe.serves
    fill_in 'Tempo de Preparo',   with: recipe.preparation_time
    select recipe.level,          from: 'Dificuldade'
    fill_in 'Ingredientes',       with: recipe.ingredients
    fill_in 'Modo de Preparo',    with: recipe.step_by_step

    click_on 'Enviar Receita'

    expect(page).to have_content recipe.name
    expect(page).to have_content recipe.kitchen
    expect(page).to have_content recipe.kind
    expect(page).to have_content recipe.proferably
    expect(page).to have_content recipe.serves
    expect(page).to have_content recipe.preparation_time
    expect(page).to have_content recipe.level
    expect(page).to have_content recipe.ingredients
    expect(page).to have_content recipe.step_by_step
  end

  scenario 'invalid' do
  visit new_recipe_path

  click_on 'Enviar Receita'

  expect(page).to have_content 'Preencher os Campos Obrigatórios'
  end
end
