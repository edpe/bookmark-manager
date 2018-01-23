ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'models/links'

class BookmarkManager < Sinatra::Base
  get '/links' do
   @links = Link.all
   erb(:'links/index')
  end

  get '/links/new' do
    erb(:'links/new')
  end

  post '/links' do
    Link.create(url: params[:url], title: params[:title])
    redirect '/links'
  end
end
