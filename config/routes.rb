Rails.application.routes.draw do

  get("/", { :controller => "users", :action => "index"})

  get("/users", { :controller => "users", :action => "index"})
  get("/users/:path_username", { :controller => "users", :action => "show"})

  get("/new_user", { :controller => "users", :action => "new"})
  get("/update_user/:modify_username", { :controller => "users", :action => "update"})

  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:path_id", { :controller => "photos", :action => "show"})

  get("/delete_photo/:toast_id", { :controller => "photos", :action => "baii"})
  get("insert_photo", { :controller => "photos", :action => "new"})
  get("update_photo/:modify_id", { :controller => "photos", :action => "update"})

  get("/new_comment/", {:controller => "photos", :action => "comment"})
end
