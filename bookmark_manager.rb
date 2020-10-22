require 'sinatra/base'
require_relative './lib/bookmark_list'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = BookmarkList.all
    erb :bookmarks
  end

  post '/bookmarks' do
    @new_bookmark = params[:url]
    BookmarkList.create(@new_bookmark)
    redirect '/bookmarks'
  end

  get '/bookmarks/new' do
    erb :form
  end

  run! if app_file == $PROGRAM_NAME
end
