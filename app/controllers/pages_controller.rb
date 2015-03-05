class PagesController < ApplicationController
  before_action :authenticate_user!

  def index

    if !user_signed_in?
      redirect '/users/sign_in'
    end

  end

end
