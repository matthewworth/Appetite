Rails.application.routes.draw do

  resources "pubs"

   root "pubs#index"

end

