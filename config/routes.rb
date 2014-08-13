Rails.application.routes.draw do

  get 'pubs/index'

   root "pubs#index"

end

