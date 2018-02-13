require 'pg'

class Link
  def self.all
    connection = PG.connect dbname: 'bookmark_manager_' + ENV['RACK_ENV']
    result = connection.exec 'SELECT * FROM links'
    result.map { |row| row['url'] }
  end
end
