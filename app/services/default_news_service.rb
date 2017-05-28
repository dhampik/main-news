# frozen_string_literal: true

class DefaultNewsService
  def fetch
    News.new(
      title: 'Хорошая новость!',
      description: 'Сегодня наиболее подходящий день для добрых дел!',
      created_at: Time.now.utc
    )
  end
end
