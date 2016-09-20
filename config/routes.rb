Rails.application.routes.draw do
  root	'pages#home'
  get	'/projects',	to: 'pages#projects'
  get	'/feed',		to: 'pages#feed'	
  get	'/comments',	to: 'pages#comments'
end
