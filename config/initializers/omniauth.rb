# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, ENV['FACEBOOK_ID'], ENV['FACEBOOK_SECRET']
# end

# Rails.application.config.middleware.use OmniAuth::Builder do
#   on_failure { |env| AuthenticationsController.action(:failure).call(env) }
# end