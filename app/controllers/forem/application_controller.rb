require 'cancan'

class Forem::ApplicationController < ApplicationController

  protect_from_forgery
  
  def current_user
    @user=User.find(session[:user_id]) if session[:user_id]
    return @user||nil
  end

  def forem_user
    current_user
  end
  
  helper_method :forem_user

  def sign_in_path
    new_user_session_path
  end
   helper_method :forem_user
  
  rescue_from CanCan::AccessDenied do
    redirect_to root_path, :alert => t("forem.access_denied")
  end

  def current_ability
    Forem::Ability.new(forem_user)
  end

  private

  def authenticate_forem_user
    if !forem_user
      session["user_return_to"] = request.fullpath
      flash.alert = t("forem.errors.not_signed_in")
      redirect_to main_app.sign_in_path
    end
  end

  def forem_admin?
    forem_user && forem_user.forem_admin?
  end
  
  helper_method :forem_admin?

  def forem_admin_or_moderator?(forum)
    forem_user && (forem_user.forem_admin? || forum.moderator?(forem_user))
  end
  
  helper_method :forem_admin_or_moderator?

end
