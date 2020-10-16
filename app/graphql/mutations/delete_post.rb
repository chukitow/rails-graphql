module Mutations
  class DeletePost < BaseMutation
    argument :id, ID, required: true

    type Types::PostType

    def resolve(id:)
      post = Post.find(id)
      post.destroy
    end
  end
end
