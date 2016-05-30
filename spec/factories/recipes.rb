FactoryGirl.define do
  factory :recipe do
    name 'Feijoada'
    kitchen 'Brasileira'
    kind 'Feijão'
    proferably 'Principal'
    serves '8'
    preparation_time '30'
    level 'Fácil'
    ingredients 'Feijão'
    preparation 'Pegue o Feijão...'
  end
end
