class PeopleController < ApplicationController

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(params[:person])
    if @person.save
      render :text => "Ok"
    else
      flash[:error] = @person.errors
      redirect_to :action => "new"
    end
  end
end
