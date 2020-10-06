class InquiryMailer < ApplicationMailer
  def send_when_submit(inquiry) #メソッドに対して引数を設定
    @inquiry = inquiry
    mail to: "pisces.myth.3@gmail.com", subject:'New message from Mydan Services Inc.'
  end
end
