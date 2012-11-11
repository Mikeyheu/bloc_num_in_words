require 'sinatra'
require_relative 'num_in_words'

get '/' do 
	erb :index
end

post '/' do  
  erb :index 
end  