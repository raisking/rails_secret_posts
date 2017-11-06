include CanCan::ControllerAdditions

class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
end

rescue_from CanCan::AccessDenied do |exception|
	render status: :unauthorized
end