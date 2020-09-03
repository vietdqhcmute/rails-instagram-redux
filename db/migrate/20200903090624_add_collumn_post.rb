class AddCollumnPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :caption, :text
    add_reference :posts, :user, foreign_key: true
  end
end
