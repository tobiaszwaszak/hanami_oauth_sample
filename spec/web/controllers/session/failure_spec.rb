require_relative '../../../../apps/web/controllers/session/failure'

RSpec.describe Web::Controllers::Session::Failure do
  let(:action) { described_class.new }
  let(:params) { { 'omniauth.auth' => {}, 'warden' => warden } }

  it 'is failure' do
    response = action.call(params)
    expect(response[0]).to eq 404
  end
end
