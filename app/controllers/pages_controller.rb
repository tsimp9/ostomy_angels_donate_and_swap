class PagesController < ApplicationController
  skip_before_action :authenticate_user!
#For static pages

  def about
  end

  def faq
  end

  def contact
  end

  def links
  end
end
