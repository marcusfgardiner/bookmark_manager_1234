
task :test do
  DatabaseConnection.setup('bookmark_manager')
  DatabaseConnection.query("TRUNCATE links;
  INSERT INTO links (url) VALUES ('http://facebook.com');
  INSERT INTO links (url) VALUES ('http://google.com');")
end
