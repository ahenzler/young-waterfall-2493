Rails.application.routes.draw do

  get '/studios/:id', to: 'applications#show'
end
