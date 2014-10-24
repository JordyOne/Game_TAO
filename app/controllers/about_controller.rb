class AboutController < ApplicationController
  def show
    @about = About.new
  end
end