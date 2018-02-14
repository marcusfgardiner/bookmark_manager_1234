require 'pg'
require_relative 'database_connection'

class Link
  def self.all
    DatabaseConnection.query('SELECT url FROM links')
  end

  def self.add_link(link)
    DatabaseConnection.query("INSERT INTO links (url) VALUES ('#{link}')")
  end
end
