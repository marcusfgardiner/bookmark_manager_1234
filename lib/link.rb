require 'pg'
require 'database_connection'

class Link
  def self.all
    # connection = PG.connect dbname: 'bookmark_manager_' + ENV['RACK_ENV'] --- databaseconnection.setup
    result = DatabaseConnection.query('SELECT url FROM links')
    # result.map { |row| row['url'] }
  end

  def self.add_link(link)
    # connection = PG.connect dbname: 'bookmark_manager_' + ENV['RACK_ENV'] --- databaseconnection.setup
    connection.exec "INSERT INTO links (url) VALUES ('#{link}')"
  end
end
