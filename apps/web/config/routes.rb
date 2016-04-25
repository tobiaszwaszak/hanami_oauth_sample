get '/auth/failure', to: 'session#failure'
get '/auth/signout', to: 'session#destroy'
get "/auth/:provider/callback", to: "session#new"
