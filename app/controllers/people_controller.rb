class PeopleController < ApplicationController

  def create
    Person.create :email => params[:email]
      render :text => "alo"
  end
end
