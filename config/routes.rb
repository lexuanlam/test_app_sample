
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#home"
  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"
  get "static_pages/contact"

  scope "(:locale)", locale: /en|vi/ do
    root "static_pages#home"
    get "static_pages/home"
  end

  scope "(:locale)", locale: /en|vi/ do
    get "static_pages/help"
  end

  scope "(:locale)", locale: /en|vi/ do
    get "static_pages/about"
  end

  scope "(:locale)", locale: /en|vi/ do
    get "static_pages/contact"
  end
end
