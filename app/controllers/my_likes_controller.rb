class MyLikesController < ApplicationController
    def index
    @user = current_user

    render("my_likes_templates/index.html.erb")
  end
end