class LinkMailer < ActionMailer::Base
	default from: "administracion@goturista.com"
	layout false
	def download_link(link)
		@link = link
		@product = link.product
		mail(to: link.email,subject:"Gracias por realizar tu compra con goturista")
	end
end