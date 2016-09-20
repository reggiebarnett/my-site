Rails.application.routes.draw do
  root 'static#home'

  get '/projects',	to: 'static#projects'
  get '/feed',		to: 'static#feed'	
  get '/comments',	to: 'static#comments'

end
