# encoding: utf-8

I18nDashboard::Engine.routes.draw do

  get "/" => "translations#index", as: :i18n_dashboard_root
  get "/get/(:lang)/:key" => "translations#get", lang: /[a-z]{2}/, key: /.*/ ,defaults: { format: "json"}
  resources :translations, only: [:index, :create, :destroy]

  # necessary to add into your app routes config
  # mount I18nDashboard::Engine => '/translations'

end


