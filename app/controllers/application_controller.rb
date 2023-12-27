class ApplicationController < ActionController::API
  rescue_from CanCan::AccessDenied do |exception|
    render json: { warning: exception, status: 'Authorization failed!'}
  end
end
