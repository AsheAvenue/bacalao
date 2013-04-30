Bacalao::Application.routes.draw do
  
  root :to => 'site#index'
  match '/admin' => 'admin#people'
  match '/admin/projectstechnologies' => 'admin#projectstechnologies', :as => :projectstechnologies
  match '/admin/projectstechnologies/addproject' => 'admin#addproject'
  match '/admin/projectstechnologies/addtechnology' => 'admin#addtechnology'
end
