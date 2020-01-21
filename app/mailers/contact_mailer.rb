class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to:"macky19910108@gmail.com",subject: "confirmation"
  end
end
