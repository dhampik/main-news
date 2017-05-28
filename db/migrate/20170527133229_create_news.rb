class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.text :title
      t.text :description
      t.text :link
      t.datetime :published_at
      t.datetime :published_until

      t.timestamps
    end
  end
end
