# -*- encoding : utf-8 -*-
Clinics::Application.routes.draw do
  resources :pacientes

  resources :convenios

  resources :terapeutas

  root :to => 'home#index'
end
