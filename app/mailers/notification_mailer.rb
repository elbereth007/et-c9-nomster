# firehose track 3, lesson 40 - file created 28 may 17

class NotificationMailer < ApplicationMailer
    default from: "no-reply@nomsterapp.com"
    
    def comment_added
        mail(to: "victor.christensen@cox.net",
            subject: "A comment has been added to your place")
    end
    
end
