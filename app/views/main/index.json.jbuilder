json.extract! @news, :title, :description
json.created_at @news.created_at.to_i
