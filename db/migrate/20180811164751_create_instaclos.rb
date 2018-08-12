class CreateInstaclos < ActiveRecord::Migration[5.1]
  def change
    create_table :instaclos do |t|
      t.text "content"
      t.integer "user_id"
      t.text "image"
    end
  end
end
