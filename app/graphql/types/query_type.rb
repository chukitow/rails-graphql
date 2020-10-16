module Types
  class QueryType < Types::BaseObject
    field :posts, [PostType], null: true do
      description "Find all posts"
    end

    field :post, PostType, null: true do
      description "Find a post by ID"
      argument :id, ID, required: true
    end

    field :comments, [CommentType], null: true do
      description "Find all comments"
    end

    def post(id:)
      Post.find(id)
    end

    def posts
      Post.all
    end

    def comments
      Comment.all
    end
  end
end
