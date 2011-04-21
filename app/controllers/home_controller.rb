class HomeController < ApplicationController
  before_filter :is_authenticated?

  def index
  end

end
