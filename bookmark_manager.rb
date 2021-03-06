require 'sinatra/base'
require_relative './lib/bookmark_list'

class BookmarkManager < Sinatra::Base
  enable :sessions, :method_override

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = BookmarkList.all
    erb :bookmarks
  end

  post '/bookmarks' do
    BookmarkList.create(params[:url], params[:url_title])
    redirect '/bookmarks'
  end

  delete "/bookmarks/:id" do
    BookmarkList.delete(params["id"])
    redirect "/bookmarks"
  end

  get '/bookmarks/new' do
    erb :form
  end

  run! if app_file == $PROGRAM_NAME
end
