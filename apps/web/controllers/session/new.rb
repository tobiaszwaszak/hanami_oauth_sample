module Web::Controllers::Session
  class New
    include Web::Action

    def auth_hash
      request.env["omniauth.auth"]
    end

    def call(params)
      user = UserRepository.auth!(auth_hash)
      warden.set_user user
      redirect_to "/"
    end

    def warden
      request.env["warden"]
    end
  end
end
