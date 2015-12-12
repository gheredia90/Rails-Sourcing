Rails.application.routes.draw do
  resources :users 
  resources :products do
      resources :bids      
   end
end


# Prefix Verb   URI Pattern                                   Controller#Action
#            users GET    /users(.:format)                              users#index
#                  POST   /users(.:format)                              users#create
#         new_user GET    /users/new(.:format)                          users#new
#        edit_user GET    /users/:id/edit(.:format)                     users#edit
#             user GET    /users/:id(.:format)                          users#show
#                  PATCH  /users/:id(.:format)                          users#update
#                  PUT    /users/:id(.:format)                          users#update
#                  DELETE /users/:id(.:format)                          users#destroy
#     product_bids GET    /products/:product_id/bids(.:format)          bids#index
#                  POST   /products/:product_id/bids(.:format)          bids#create
#  new_product_bid GET    /products/:product_id/bids/new(.:format)      bids#new
# edit_product_bid GET    /products/:product_id/bids/:id/edit(.:format) bids#edit
#      product_bid GET    /products/:product_id/bids/:id(.:format)      bids#show
#                  PATCH  /products/:product_id/bids/:id(.:format)      bids#update
#                  PUT    /products/:product_id/bids/:id(.:format)      bids#update
#                  DELETE /products/:product_id/bids/:id(.:format)      bids#destroy
#         products GET    /products(.:format)                           products#index
#                  POST   /products(.:format)                           products#create
#      new_product GET    /products/new(.:format)                       products#new
#     edit_product GET    /products/:id/edit(.:format)                  products#edit
#          product GET    /products/:id(.:format)                       products#show
#                  PATCH  /products/:id(.:format)                       products#update
#                  PUT    /products/:id(.:format)                       products#update
#                  DELETE /products/:id(.:format)                       products#destroy
