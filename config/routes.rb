Rails.application.routes.draw do

  resources :event_registrations
  resources :organizers
  devise_for :admin_users, {class_name: 'Member'}.merge(ActiveAdmin::Devise.config)
  ActiveAdmin.routes(self)

  devise_for :members
  resources :members

  # devise_for :members, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)

  resources :community_member_profiles
  resources :sponsors
  resources :community_memberships
  resources :communities do
    resources :groups do
        resources :events
    end
  end
  resources :group_memberships
  resources :venues
  resources :group_member_profiles
  resources :member_profiles

  root to: 'home#index'

end
