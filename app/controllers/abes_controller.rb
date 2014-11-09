class AbesController < ApplicationController

  def home
    render layout: "home"
    @title = "| home"
  end

  def who
    @title = "| who we are"
  end

  def what
    @title = "| what we do"
  end

  def power_point
    @title = "| how we do it"
  end

  def current_status
    @title = "| current status"
  end

  def news
    @title = "| news"
  end
end
