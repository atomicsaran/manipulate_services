require 'sinatra'
require 'sinatra/activerecord'
require './models/Book.rb'

#list
get '/books' do
  content_type :json
  @books = Book.all
  @books.to_json
end


#create

post "/books/new" do

  content_type :json
  @book = Book.new(params)
  if @book.save
    body( {type: "success", message: " book details created successfully", data: @book }.to_json )
  else
    status 422
    body( {type: "error", message: @book.errors}.to_json )
  end
end
















# get '/index' do
#   content_type :json
#   @test = Details.all
#   @test.to_json
# end

# post "/index/new" do
#   content_type :json
#   @mani = Details.new(params)
#   if @mani.save
#     body( {type: "success", message: "created successfully", data: @mani }.to_json )
#   else
#     status 422
#     body( {type: "error", message: @mani.errors}.to_json )
#   end
# end






























# get'/' do
# 	erb :index
# 	end


# post '/' do
#   @values = params
#   redirect to("/index1?#{query}")
# end

# get '/index1' do
#   # @values = params
#   html :index1
# end

# post '/main/rev' do
# 	""
# end



# get '/main/:name' do

# 	"name , #{params[:name]}"
#  end

# get '/index/:name' do
# 	@rev = params[:name]
# 	erb :index
#   end

# get '/form' do
#   erb :form
# end

# post '/form' do
#   # "You said '#{params[:message]}'"
#   redirect to{"http://www.google.com"}
# end



 # post '/:name' do 
 # 	@name = params[:name]
 # 	redirect to("/index?#{name}")
 # end

 get '/str2/:name' do
    "String Capitalize: #{params[:name].capitalize}"
 end

 # get '/str3/:name' do
 #    "String upper: #{params[:name].upcase}"
 #  end

 # get '/str4/:name' do
 #    "String lower: #{params[:name].downcase}"
 # end