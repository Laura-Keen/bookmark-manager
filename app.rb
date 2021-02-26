require 'sinatra/base'
require './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base

  get '/' do
    @bookmarks = Bookmarks.all
    erb :index
  end

  post '/bookmarks' do
    Bookmarks.create(url: params['url'], title: params['title'])
    redirect '/'
  end

  post '/delete_bookmark' do
    Bookmarks.delete(params['del_title'])
    redirect '/'
  end
  # get '/bookmarks' do
  #   @bookmarks = Bookmarks.all
  #   erb :bookmarks
  # end
  #
  # get '/bookmarks/new' do
  #   @bookmarks = Bookmarks.all
  #   erb :'bookmarks/new'
  # end

  run! if app_file == $0
end
