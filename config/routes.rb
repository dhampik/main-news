Rails.application.routes.draw do
  root to: 'main#index'
  get '/(.:format)' => 'main#index', as: :news

  get 'admin' => 'admin#edit'
  put 'admin' => 'admin#upsert'
end
