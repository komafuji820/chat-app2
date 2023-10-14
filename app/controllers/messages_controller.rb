class MessagesController < ApplicationController
  def index
    @users = User.all
  end
end
