class Post < ApplicationRecord
  belongs_to :user
  belongs_to :parent, class_name: 'Post', optional: true

  has_many :replies, class_name: 'Post', foreign_key: :parent_id

  scope :root, -> { where(parent_id: nil) }
  scope :leaves, -> { left_outer_joins(:replies).where(posts: { parent_id: nil }) }
end
