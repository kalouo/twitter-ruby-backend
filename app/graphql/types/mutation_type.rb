module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :sign_in_user, mutation: Mutations::SignInUser
    field :create_tweet, mutation: Mutations::CreateTweet
    field :sign_out_user, mutation: Mutations::SignOutUser
    field :update_bio, mutation: Mutations::UpdateBio
  end
end
