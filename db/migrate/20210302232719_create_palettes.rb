class CreatePalettes < ActiveRecord::Migration[6.1]
  def change
    create_table :palettes do |t|
      t.string :one
      t.string :two
      t.string :three
      t.string :four
      t.string :five

      t.timestamps
    end
  end
end
