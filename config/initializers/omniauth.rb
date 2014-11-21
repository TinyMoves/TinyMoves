OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '672903442822337', 'f1537c8a4378d7767321ba6b2da3f09f'
end