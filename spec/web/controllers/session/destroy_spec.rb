require_relative '../../../../apps/web/controllers/session/destroy'

RSpec.describe Web::Controllers::Session::Destroy do
  let(:action) { described_class.new }
  let(:params) { { 'omniauth.auth' => {}, 'warden' => warden } }

  it 'is redirects' do
    response = action.call(params)
    expect(response[0]).to eq 302
  end
end
