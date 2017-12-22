class UsersController < ApplicationController
  def show
    @user = user.current_user
  end

  def full_name
    return profile.full_name if profile?

    email
  end

  def profile?
    profile.present? && profile.persisted?
  end
end
