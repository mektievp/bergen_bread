class StaticPagesController < ApplicationController
  before_action :referred_by_who
  before_action :home?
  before_action :navigation_type
  after_action :save_prev_route


  def home
    @referred_by = request.referrer
  end

  def about_us
  end

  def contact_us
  end

  def catalog
  end

  def pricing
  end

  def referred_by_who
    @referred_by = request.referrer
  end

  def home?
    @on_home = params[:controller] == 'static_pages' && params[:action] == 'home'
  end

  def save_prev_route
    session[:prev_controller] = params[:controller]
    session[:prev_action] = params[:action]
  end

  def navigation_type
    p '@referred_by.present? => ' + @referred_by.present?.to_s
    p 'session[:prev_action] => ' + session[:prev_action].to_s 
    if !@referred_by.present? && params[:action] == 'home'
      p 'navigation-enter-animate'
      @navigation_type = 'enter-animate'
    elsif !@referred_by.present? && params[:action] != 'home'
      p 'navigation-tab'
      @navigation_type = 'tab'
    elsif @referred_by.present? && session[:prev_action] == 'home' && params[:action] != 'home'
      p 'navigation-tab-animate'
      @navigation_type = 'tab-animate'
    elsif @referred_by.present? && session[:prev_action] == 'home' && params[:action] == 'home'
      p 'navigation-home'
      @navigation_type = 'home'
    elsif @referred_by.present? && session[:prev_action] != 'home' && params[:action] == 'home'
      p 'navigation-home-animate'
      @navigation_type = 'home-animate'
    elsif @referred_by.present? && session[:prev_action] != 'home' && params[:action] != 'home'
      p 'navigation-tab'
      @navigation_type = 'tab'
    end
  end
end
