Rails.application.routes.draw do

resources :projects
resources :works
resources :calendars


root "calendars#index"

end
