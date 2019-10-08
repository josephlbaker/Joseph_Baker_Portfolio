class PagesController < ApplicationController
  def home
    @home_page = true
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end
end
