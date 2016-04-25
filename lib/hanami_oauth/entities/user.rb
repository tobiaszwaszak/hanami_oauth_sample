class User
  include Hanami::Entity

  attributes :id, :name, :github_id, :email
end
