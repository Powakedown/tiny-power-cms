class CreateElements < ActiveRecord::Migration[8.1]
  def change
    create_table :elements do |t|
      t.string :text
      t.string :placement
      t.references :section, null: false, foreign_key: true
      t.string :image
      t.string :background_image

      t.timestamps
    end
  end
end
