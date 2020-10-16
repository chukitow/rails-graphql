module Types
  class CommentType < Types::BaseObject
    field :content, String, null: true
    field :post, Types::PostType, null: true
  end
end
