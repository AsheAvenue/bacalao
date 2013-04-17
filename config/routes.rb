Bacalao::Application.routes.draw do
  
  root :to => 'site#index'
  match '/admin' => 'admin#people'
  match '/admin/manage' => 'admin#manage', :as => :manage
  match '/admin/manage/addproject' => 'admin#addproject'
  match '/admin/manage/addtechnology' => 'admin#addtechnology'
end
