class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_purchase
    if !session[:purchase_id].nil?
      Purchase.find(session[:purchase_id])
    else
      Purchase.new
    end
  end

end
