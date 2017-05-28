# frozen_string_literal: true

require 'open-uri'
require 'rss'

class YandexNewsService
  def fetch
    Rails.cache.fetch('main_news', expires_in: 1.minute) do
      Rails.logger.info 'Cache empty'
      news_item = rss_top_item
      News.new(title: news_item.title, description: news_item.description, created_at: news_item.pubDate)
    end
  rescue => e
    log_rss_exception e
    nil
  end

  def rss_top_item
    open('https://news.yandex.ru/index.rss') do |rss|
      Rails.logger.info 'News fetched from yandex RSS'
      RSS::Parser.parse(rss).items[0]
    end
  end

  def log_rss_exception(e)
    Rails.logger.error 'Error occured while fetching news from yandex RSS'
    Rails.logger.error e.message
    Rails.logger.error e.backtrace
  end
end
