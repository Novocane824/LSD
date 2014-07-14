class UserMailer < ActionMailer::Base
  default from: "info@lsd.com"

  def contact_us_email(contact)
    @contact = contact
    mail(to: 'wezz824@hottmail.com', subject: 'New Contact')
  end
end
