require 'sinatra'
require './main'
require 'rubygems'
require 'haml'


get '/toSHA2/:input' do
  @input = params[:input]
  @input = Digest::SHA256.hexdigest @input
  haml :post
end

get '/text-to-SHA2' do
   haml :ask
end

get '/text/:GetPlainTextInput/SHA2' do
  @input = params[:GetPlainTextInput]
  @input = Digest::SHA256.hexdigest @input
  haml :calculate
end

post '/calculate-hash' do
  @input = params["input"]
  @input = Digest::SHA256.hexdigest @input
  haml :calculate
end

