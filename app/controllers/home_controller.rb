class HomeController < ApplicationController
  def index
    @inquiry = Inquiry.new
  end

  def inquiry
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.valid?
      InquiryMailer.send_when_submit(@inquiry).deliver
      redirect_to root_path, notice: 'Your Message has been sent.'
    else
      render "index"
    end
  end




  private
  def inquiry_params
    params[:inquiry].permit(
      :email,
      :name,
      :tel,
      :subject,
      :text
    )
  end

end
