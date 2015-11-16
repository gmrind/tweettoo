# if Rails.env.production?
# 	CarrierWave.configure do |config|
# 		config.fog_credentials = {
# 			:provider=> 'AWS',
# 			:aws_access_key_id		=> ENV['S3_ACCESS_KEY'],
# 			:aws_secret_access_key 	=> ENV['S3_SECRET_KEY']
# 		}
# 		config.fog_directory	= ENV['S3_BUCKET']
# 	end
# end

# -------------------------------------------------------------------

CarrierWave.configure do |config|                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAILIQGPTA2OQP6E2A',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'us-west-2',                  # optional, defaults to 'us-east-1'
    host:                  's3.example.com',             # optional, defaults to nil
    endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'tweettoo-app'                          # required
  config.fog_public     = false                                        # optional, defaults to true
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end