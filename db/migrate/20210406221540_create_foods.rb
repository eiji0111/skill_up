class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :title
      t.string :image_id
      t.date :expiration

      t.timestamps
    end
  end
end
