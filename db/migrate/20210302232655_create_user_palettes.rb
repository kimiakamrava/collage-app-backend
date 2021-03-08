class CreateUserPalettes < ActiveRecord::Migration[6.1]
  def change
    create_table :user_palettes do |t|
      t.integer :user_id
      t.integer :palette_id


      t.timestamps
    end
  end
end
