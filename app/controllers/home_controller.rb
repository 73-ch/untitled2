require 'securerandom'
class HomeController < ApplicationController
  def home

  end

  def index
    @num = SecureRandom.hex(2)
    params[:num] = @num
  end

  def controller

  end
end
