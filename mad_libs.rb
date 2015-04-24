require 'sinatra'

get '/' do
  erb :form
end

get '/upload' do
  erb :upload
end

get '/story' do
  erb :story
end

post '/' do
  @name = "#{params[:post][:first_name]} #{params[:post][:last_name]}"
  @fname = "#{params[:post][:first_name]}"
  @lname = "#{params[:post][:last_name]}"
  if @name == "Brennan Kinney"
    erb "Buckets"
  elsif @name == "Anthony Kennedy"
    erb "Nooo!!! Jimmy!!!"
  else 
   erb  "Hello, #{@name}. Welcome to my submarine. It's long and hard and full of seamen."
  end
end
