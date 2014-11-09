class InquiriesController < ApplicationController
  def new
   @inquiry = Inquiry.new
   @title = "| request info"
  end
  
  def create
    @inquiry = Inquiry.new(params[:inquiry])
    if @inquiry.deliver
      render :thank_you
      @title = "| thank you"
    else
      render :new
    end
  end
end
