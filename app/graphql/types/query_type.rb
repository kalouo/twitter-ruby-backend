module Types
  class QueryType < Types::BaseObject
    field :all_users, [UserType], null: false

    def all_users
      User.all
    end

    field :current_user_tweets, [TweetType], null: false

    def current_user_tweets
      Tweet.where(:user_id => context[:current_user])
    end

    field :get_current_user, UserType, null: false
    
    def get_current_user
      context[:current_user]
    end
  end
end
