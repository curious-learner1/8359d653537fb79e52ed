Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post 'api/robot/0/orders', to: 'robot#get_position'

end

