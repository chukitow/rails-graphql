module Mutations
  class CreatePost < BaseMutation
    argument :title, String, required: true

    type Types::PostType

    def resolve(title: nil)
      Post.create!(title: title)
    end
  end
end
