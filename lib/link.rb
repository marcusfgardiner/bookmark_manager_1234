require 'pg'

class Link
  def self.all
  
    # if ENV['RACK_ENV'] == 'test'
    #   connection = PG.connect dbname: ENV['CONN']
    # else
    #   connection = PG.connect dbname: 'bookmark_manager'
    # end
    #  REFACTOR to use bdname = bookmark_manager + test/dev using ENV['RACK_ENV']

    result = connection.exec 'SELECT * FROM links'

    result.map { |row| row['url'] }
  end
end
