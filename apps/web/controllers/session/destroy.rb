module Web::Controllers::Session
  class Destroy
    include Web::Action

    def call(params)
      warden.logout
      redirect_to "/"
    end
  end
end
