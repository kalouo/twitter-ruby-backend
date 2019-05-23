module Mutations
    class SignOutUser < BaseMutation

    field :token, String, null: true
    field :user, Types::UserType, null: true

    def resolve()

      context[:session][:token] = nil
      context[:current_user] = nil

      { user: context[:current_user], token: context[:session][:token] }

    end
  end
end