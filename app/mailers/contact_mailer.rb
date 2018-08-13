class ContactMailer < ApplicationMailer
def contact_mail(instaclo,email)
 @instaclo = instaclo
 mail to: email, subject: "投稿確認メール"
end
end
