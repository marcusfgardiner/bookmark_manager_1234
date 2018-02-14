task :setup do
  # DatabaseConnection.setup('postgres')
  conn = DatabaseConnection.setup('postgres')

# TODO: Stuff for test database
  conn.exec("CREATE DATABASE bookmark_manager_test")
  DatabaseConnection.setup('bookmark_manager_test')

# TODO: Stuff for development database
  conn.exec("CREATE DATABASE bookmark_manager_development")

  Rake::Task[:test].execute
  Rake::Task[:development].execute
end

task :test do
  DatabaseConnection.setup('bookmark_manager_test')
  DatabaseConnection.query("TRUNCATE links;
  INSERT INTO links (url) VALUES ('http://facebook.com');
  INSERT INTO links (url) VALUES ('http://google.com');")
end

task :development do
    # DatabaseConnection.setup('bookmark_manager_development')
end
