Rails.application.routes.draw do
  root 'sales#new'

  resource :sales, only: [:new, :create]
  get 'sales/:id/done', to: 'sales#done', as: :sales_done
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
