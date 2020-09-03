class AddCollumnComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :description, :text
    add_reference :comments, :user, foreign_key: true
    add_reference :comments, :post, foreign_key: true
  end
end
