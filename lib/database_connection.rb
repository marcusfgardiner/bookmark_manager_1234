require 'pg'

class DatabaseConnection
  def self.setup(db_name)
    PG.connect dbname: "#{db_name}_#{ENV['RACK_ENV']}"
  end
end
