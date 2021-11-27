class RenameMainIdColumnToLikes < ActiveRecord::Migration[6.1]
  def change
    rename_column :likes, :main_id, :post_id
  end
end
