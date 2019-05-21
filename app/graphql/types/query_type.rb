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
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end
  end
end
