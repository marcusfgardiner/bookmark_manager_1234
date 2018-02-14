require 'sinatra/base'
require_relative 'lib/link'
require 'pg'
require_relative 'lib/database_connection'

class BookmarkManager < Sinatra::Base

  DatabaseConnection.setup('bookmark_manager')
  p DatabaseConnection.setup('bookmark_manager')
  p DatabaseConnection.query("SELECT * FROM links;")

  get '/' do
    @links = Link.all
    p Link.all
    erb(:index)
  end

  post '/add_link' do
    Link.add_link(params[:new_link])
    redirect '/'
  end

  run! if app_file == $0
end
