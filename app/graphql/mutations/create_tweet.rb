module Mutations
    class CreateTweet < BaseMutation
  
      argument :content, String, required: true
  
      type Types::TweetType
  
      def resolve(content: nil)
        Tweet.create!(
          content: content,
          user: context[:current_user]
        )
      end
    end
  end