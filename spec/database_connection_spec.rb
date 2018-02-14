require 'database_connection'

describe DatabaseConnection do
  describe '::setup' do
    it 'sets up a connection to the specified database' do
      expect(described_class.setup('bookmark_manager')).to be_an_instance_of(PG::Connection)
    end
  end
end
