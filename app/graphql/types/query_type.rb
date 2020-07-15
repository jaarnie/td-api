module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :users, [Types::UserType], null: false

    def users
      User.all
    end


    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

    field :entries, [Types::EntryType], null: false
 
    def entries
      Entry.all
    end


    field :entry, Types::EntryType, null: false do
      argument :id, ID, required: true
    end

    def entry(id:) 
      Entry.find(id)
    end
  end
end
