class StaticPagesController < ApplicationController
  def home
    @paintings = Painting.all
  end

  def about
  end

  def contact
  end
end
