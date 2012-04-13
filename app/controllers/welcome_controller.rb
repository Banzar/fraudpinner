class WelcomeController < ApplicationController
  def index
		if params[:search] && !params[:search].empty?
			@offenders = Offender.find(:all, :conditions => ['name LIKE ?', "%#{params[:search]}%"]) + Offender.find(:all, :conditions => ['phone_number LIKE ?', "%#{params[:search]}%"]) + Offender.find(:all, :conditions => ['serial_number LIKE ?', "%#{params[:search]}%"]) + Offender.find(:all, :conditions => ['address LIKE ?', "%#{params[:search]}%"])
		end
	end
end
