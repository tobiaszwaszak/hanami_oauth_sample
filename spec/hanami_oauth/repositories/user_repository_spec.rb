RSpec.describe UserRepository do
  before do
    UserRepository.clear
  end

  let(:user) { described_class.auth!(params) }
  let(:params) do
    {
      info: {
        uid: '123456',
        name: 'Test',
        email: 'test@example.com'
      }
    }
  end

  describe '#auth!' do
    context 'when user exists' do
      before do
        described_class.auth!(params)
      end

      it 'has proper name' do
        expect(user.name).to eq('Test')
      end

      it 'has proper email' do
        expect(user.email).to eq('test@example.com')
      end

      it 'create user' do
        expect { user }.to change { described_class.all.count }.by(1)
      end
    end

    context 'when user no exists' do
      it 'has proper name' do
        expect(user.name).to eq('Test')
      end

      it 'has proper email' do
        expect(user.email).to eq('test@example.com')
      end

      it 'create user' do
        expect { user }.to change { described_class.all.count }.by(1)
      end
    end
  end
end
