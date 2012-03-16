class PagesController < ApplicationController
  
  def home
    @title='Hello Conchito home'
  end

  def landing
    @title='Hello Conchito landing'
  end
  
  def about
    @title='Hello Conchito about'
  end

end
