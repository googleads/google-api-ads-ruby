AdwordsOnRails::Application.routes.draw do
  get "home/index"

  get "campaign/index"

  get "account/index"
  get "account/input"
  get "account/select"

  get "login/prompt"
  get "login/callback"
  get "login/logout"

  get "report/index"
  post "report/get"

  root :to => "home#index"
end
