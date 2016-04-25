class UserRepository
  include Hanami::Repository

  def self.auth!(auth_hash)
    info = auth_hash[:info]
    github_id = info[:uid].to_i
    attrs = {
      name:   info[:name],
      email:  info[:email]
    }

    if user = query { where(github_id: attrs[:github_id]) }.first
      user.update(attrs)
      update user
    else
      create(User.new(attrs.merge(github_id: github_id)))
    end
  end
end
