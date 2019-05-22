module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    # queries are just represented as fields
    # `all_links` is automatically camelcased to `allLinks`
    field :all_users, [UserType], null: false

    # this method is invoked, when `all_link` fields is being resolved
    def all_users
      User.all
    end

    field :current_user_tweets, [TweetType], null: false

    # this method is invoked, when `all_link` fields is being resolved
    def current_user_tweets
      Tweet.where(:user_id => context[:current_user])
    end
    
  end
end
