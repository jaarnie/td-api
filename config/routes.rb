# Rails.application.routes.draw do
#   if Rails.env.development?
#     mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphiql"
#   end

#   post "/graphql", to: "graphql#execute"

#   # namespace :api do
#   #   namespace :v1 do

#       resources :therapists
#       resources :entries
#       resources :users
      

#       post 'login', to: 'users#login'

#   #   end
#   # end
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end


Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
  end
  post "/graphql", to: "graphql#execute"
end
