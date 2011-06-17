class EarlyAccessesController < ApplicationController

  def new
    @early_access         = EarlyAccess.new
    @early_access.product = Product.find_by_alias(params[:alias])
    @early_access.person  = Person.new
  end

  def create
    email = params[:early_access][:email]
    aliases = params[:early_access][:alias]

    @early_access         = EarlyAccess.new
    @early_access.product = Product.find_by_alias(aliases)
    @early_access.person  = Person.find_or_create_by_email(email)

    @early_access.save
    flash[:notice] = "Thank you for having interest in our product. We will get in touch as soon as soon as possible."
    redirect_to :back

  end

end
