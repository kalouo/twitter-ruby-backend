module Types
    class TweetType < BaseObject
      field :id, ID, null: false
      field :content, String, null: false
      field :posted_by, UserType, null: false, method: :user
      field :created_at, String, null: false
    end
  end