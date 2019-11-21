class AddFieldsToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :content, :string
    add_column :posts, :like_counts, :integer, default: 0
  end
end
