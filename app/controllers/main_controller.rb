# frozen_string_literal: true

class MainController < ApplicationController
  # GET /
  # GET /.json
  def index
    @news = News.most_active || YandexNewsService.new.fetch || DefaultNewsService.new.fetch
  end
end
