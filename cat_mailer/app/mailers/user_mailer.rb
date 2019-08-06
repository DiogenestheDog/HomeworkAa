class UserMailer < ApplicationMailer
    default from 'everybody@appacademy.io'

    def welcome_email(user)
        @user = user
        @url = 'chelonianblue@gmail.com'
        mail(to: user.email, subject: 'imma trapped in cyberspace')
    end
end
