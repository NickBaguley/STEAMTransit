class StaticPagesController < ApplicationController
  skip_before_filter :authenticate_user!

  def home
  end

  def registration
  end

  def speakers
  end

  def about
  end
end
