class RemoveImageColumnsFromElements < ActiveRecord::Migration[8.1]
  def change
    remove_column :elements, :image, :string
    remove_column :elements, :background_image, :string
  end
end
