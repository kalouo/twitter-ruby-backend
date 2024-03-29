module Mutations
    class CreateUser < BaseMutation
      class AuthProviderSignupData < Types::BaseInputObject
        argument :email, Types::AuthProviderEmailInput, required: false
      end
  
      argument :username, String, required: true
      argument :auth_provider, AuthProviderSignupData, required: false

      type Types::UserType
  
      def resolve(username: nil, auth_provider: nil)
        User.create!(
          username: username,
          email: auth_provider&.[](:email)&.[](:email),
          password: auth_provider&.[](:email)&.[](:password),
          bio: "Enter bio here."
        )
      end
    end
  end