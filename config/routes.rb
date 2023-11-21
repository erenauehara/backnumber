Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #カテゴリー分けに関係するところのみ記載
  get 'zooms/situren' => 'zooms#situren'
  get 'zooms/men' => 'zooms#men'
  get 'zooms/women' => 'zooms#women'

 resources :zooms
  root 'zooms#top'
end
