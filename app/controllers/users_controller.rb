class UsersController < ApplicationController

  def index
    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc})

    render({:template => "user_templates/index.html.erb"})
  end
  
    def show
      
      url_username = params.fetch("path_username")
      matching_usernames = User.where({ :username => url_username })
      @the_user = matching_usernames.first

      if @the_user == nil
        redirect_to("/404")

      else
         render({:template => "user_templates/show.html.erb"})
       end
    end
    
    def new

      query_username = params.fetch("query_username")

      new_username = User.new

      new_username.username = query_username

      new_username.save
    
      redirect_to ("/users/"+new_username.username)
    end

    def update

      modify_username = params.fetch("modify_username")
      query_username = params.fetch("query_update_username")

      matching_user = User.where(:username => modify_username)

      updated_user = matching_user.at(0)

      updated_user.username = query_username
      updated_user.save

      redirect_to ("/users/"+updated_user.username.to_s)

    end
end
