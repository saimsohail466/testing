module Types
  class CommentType < BaseObject
    field :id, ID, null: false
    field :content, Text, null: false
    field :post_id, ID, null: false
  end
end
