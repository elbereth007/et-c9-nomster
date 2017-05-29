# firehose track 3, lesson 40 - file created 28 may 17

class NotificationMailer < ApplicationMailer
    default from: "no-reply@nomsterapp.com"
    
    def comment_added(comment)
        @place = comment.place
        @place_owner = @place.user
#        mail(to: "victor.christensen@cox.net",
        mail(to: @place_owner.email,
            subject: "A comment has been added to #{@place.name}")
    end
    
end
