module Types
 class PostType < BaseObject
  field :id, ID, null: false
  field :title, String, null: false
  field :description, Text, null: true,
  field :comments, [Types::CommentType], null: true
  end
end
