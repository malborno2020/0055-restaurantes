Rails.application.routes.draw do
  get 'tipos_comidas', to: 'tipos_comidas#listar'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
