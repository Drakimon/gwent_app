class StaticPagesController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]
  
  def home
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
end
