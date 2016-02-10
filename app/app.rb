require 'sinatra/base'
require_relative 'data_mapper_setup'



class BookmarkManager < Sinatra::Base
ENV["RACK_ENV"] ||= "development"

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    link = Link.new(url: params[:url], title: params[:title])
    tag = Tag.create(name: params[:name])
    link.tags << tag
    link.save
    redirect to('/links')
  end

  run! if app_file == $0
end
