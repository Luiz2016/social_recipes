require 'rails_helper'

feature 'User creates recipe' do

 scenario 'successfully' do
  recipe = Recipe.new(name:'Macarronada', kitchen:'Italiana',
                      kind:'Prato Principal', proferably:'Massas',
                      serves:1, preparation_time:12, level:'Easy',
                      ingredients:'Macarrão, Tomate',
                      step_by_step:'Pegue o macarrão...')

    visit new_recipe_path

    fill_in 'Receita',            with: recipe.name
    fill_in 'Italiana',           with: recipe.kitchen
    fill_in 'Principal',          with: recipe.kind
    fill_in 'Massas',             with: recipe.proferably
    select 1,                     from: 'serves'
    select 30,                    from: 'Tempo de Preparo'
    fill_in 'Nivel',              with: recipe.level
    fill_in 'Ingredientes',       with: recipe.ingredients
    fill_in 'Preparo',            with: recipe.step_by_step


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
    click_on 'Cadastrar Receita'

    expect(page).to have_content "Warning! All fields are mandatory."
  end
end
