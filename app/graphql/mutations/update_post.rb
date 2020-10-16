module Mutations
  class UpdatePost < BaseMutation
    argument :id, ID, required: true
    argument :title, String, required: true

    type Types::PostType

    def resolve(id:, **attributes)
      Post.find(id).tap do |post|
        post.update!(attributes)
      end
    end
  end
end
