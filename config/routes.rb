# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
RedmineApp::Application.routes.draw do
    resources :announcements, only: [:new, :create, :edit, :update, :destroy]
end
get 'announcements_all', to: "announcements#announcement_data"
  