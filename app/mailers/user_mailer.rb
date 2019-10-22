class UserMailer < ApplicationMailer
	default from: 'siddharth.jmanit@gmail.com'
	
	def circular_email(user,id)
		@user = user
		@id = id
		mail(to: @user.email, subject: 'This is new circular')
	end
	
	def id

	end


end
