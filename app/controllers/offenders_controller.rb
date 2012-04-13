class OffendersController < ApplicationController
	before_filter :authenticate

  def new
		@offender = Offender.new
  end

  def create
		offender = Offender.create(params[:offender])
		if offender.save
			redirect_to root_url
		else
			render "new"
		end
  end

  def delete
  end

end
