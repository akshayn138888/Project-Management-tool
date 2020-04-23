Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get("/", to: "welcome#home") 
  get("/about", to: "welcome#about") 
 
  #### Model Project ####
  get("/projects", to: "projects#index")
  
  get("/projects/new", to:"projects#new" , as: :new_project )
  
  post("/projects", to:"projects#create" )
  
  get("/projects/:id", to: "projects#show", as: :project)
  
  get("/projects/:id/edit", to: "projects#edit", as: :edit_projects)

  patch("/projects/:id", to: "projects#update")
  
  delete("/projects/:id", to: "projects#destroy")


end
