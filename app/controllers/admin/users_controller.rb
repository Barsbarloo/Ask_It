class Admin::UsersController < ApplicationController
  before_action :require_authentication

  def index
    respond_to do |format|
      format.html do
        @pagy, @users = pagy User.order(created_at: :desc)
      end

      format.zip {respond_with_zipped_users}
    end
  end
  private
  
  def respond_with_zipped_users

  end
end