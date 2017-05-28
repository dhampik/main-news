# frozen_string_literal: true

class News < ApplicationRecord
  validates_presence_of :title, :description
  validate :published_until_didnt_come

  def published_until_didnt_come
    if published_until.blank? || published_until < Time.now
      errors.add(:published_until, I18n.t('errors.messages.in_past'))
    end
  end

  def self.most_active
    now = Time.now.utc
    where('published_until > :now', now: now).order('published_until DESC').first
  end
end
