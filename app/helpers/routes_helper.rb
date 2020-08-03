module RoutesHelper
	require 'rqrcode'

	def qrcode()
		@qr = RQRCode::QRCode.new("http://github.com/").to_img.resize(200, 200).to_data_url
	end
end
