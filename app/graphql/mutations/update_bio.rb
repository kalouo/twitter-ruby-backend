module Mutations
    class UpdateBio < BaseMutation
      field :user, Types::UserType, null: true
      argument :bio, String, required: true
    
      def resolve(bio: nil)
        user = context[:current_user]
        context[:current_user].bio = bio
        user.bio = bio
        user.save
        {user: user}
      end

    end
  end