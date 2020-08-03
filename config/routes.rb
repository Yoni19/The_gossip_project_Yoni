Rails.application.routes.draw do
  get 'yonipage/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get '/', to: 'yonipage#index'
get '/team', to: 'yonipage#team'
get '/contact',to: 'yonipage#contact'
get '/new_gossip', to: 'yonipage#new_gossip'
post '/new_gossip', to: 'yonipage#new_gossip_post'
get '/gossip/user/:user_gossip', to: 'yonipage#gossip'

end
