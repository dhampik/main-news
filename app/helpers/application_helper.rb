# frozen_string_literal: true

module ApplicationHelper
  def title(page_title)
    content_for :title, page_title.to_s
  end

  def copyright_info(start_year = 2017)
    copyright = '&copy; dhampik ' + start_year.to_s
    current_year = Time.now.year
    copyright += ' &ndash; ' + current_year.to_s if current_year != start_year
    raw(copyright)
  end
end
