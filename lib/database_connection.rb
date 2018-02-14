require 'pg'

class DatabaseConnection
  def self.setup(db_name)
    @database = PG.connect dbname: "#{db_name}_#{ENV['RACK_ENV']}"
  end

  def self.query(query_string)
    result = @database.exec(query_string)
    result.values
  end
end
