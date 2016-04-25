require_relative '../../../../apps/web/controllers/home/index'

RSpec.describe Web::Controllers::Home::Index do
  let(:action) { described_class.new }
  let(:params) { { 'omniauth.auth' => omniauth_params, 'warden' => warden } }

  it 'is successful' do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
