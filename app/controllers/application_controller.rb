class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :store_user_location!, if: :storable_location?
  
  before_action :check_authentication

  def check_authentication
    unless params[:controller] == 'devise/sessions' or params[:controller] == 'devise/passwords'
      unless current_user
        session[:intended_action] = action_name
        session[:intended_controller] = controller_name
        redirect_to new_user_session_path
      end
    end
  end

  before_action :check_authorization

  private 

  def check_authorization
    unless params[:controller] == 'devise/sessions' or params[:controller] == 'devise/passwords'
      unless current_user.can?(action_name, controller_name)
        if !request.env["HTTP_REFERER"].blank? and request.env["HTTP_REFERER"] != request.env["REQUEST_URI"]
          redirect_to root_path, :notice => "You are not authorized to view the page you requested - "+action_name+" "+controller_name
        else
          redirect_to root_path, :notice => "You are not authorized to view the page you requested"
        end
      end
    end
  end

    def storable_location?
      request.get? && is_navigational_format? && !devise_controller? && !request.xhr? 
    end

    def store_user_location!
      store_location_for(:user, request.fullpath)
    end

  def after_sign_in_path_for(resource)
     stored_location_for(resource) || root
  end

end
