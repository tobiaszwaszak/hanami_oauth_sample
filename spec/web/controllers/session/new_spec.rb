require_relative '../../../../apps/web/controllers/session/new'

RSpec.describe Web::Controllers::Session::New do
  let(:action) { described_class.new }
  let(:params) { { 'omniauth.auth' => omniauth_params, 'warden' => warden } }

  it 'is successful' do
    response = action.call(params)
    expect(response[0]).to eq 302
  end
end
