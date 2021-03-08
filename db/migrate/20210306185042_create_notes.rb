class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :body
      t.string :title
      t.integer :palette_id

      t.timestamps
    end
  end
end
