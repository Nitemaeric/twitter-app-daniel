class AddParentToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :parent, foreign_key: { to_table: :posts }
  end
end
