class CreateSections < ActiveRecord::Migration[8.1]
  def change
    create_table :sections do |t|
      t.string :layout
      t.boolean :published

      t.timestamps
    end
  end
end
