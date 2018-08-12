class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :instaclo_id      
      t.text :image

      t.timestamps
    end
  end
end
