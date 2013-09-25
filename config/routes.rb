# encoding: utf-8

I18nDashboard::Engine.routes.draw do

  get "/" => "translations#index", as: :i18n_dashboard_root
  resources :translations, only: [:index, :create, :destroy]

end
