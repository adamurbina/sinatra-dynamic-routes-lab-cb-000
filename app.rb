require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
      params[:name].reverse
  end

  get "/square/:number" do
      @number = (params[:number].to_i)
      @square = (@number * @number)
      "#{@square}"
  end

  get "/say/:number/:phrase" do
      @number = (params[:number].to_i)
      @phrase = params[:phrase]
      @phrase.gsub! "%20", " "
     "#{@phrase * @number}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    #   @word1 = params[:word1]
    #   @word2 = params[:word2]
    #   @word3 = params[:word3]
    #   @word4 = params[:word4]
    #   @word5 = params[:word5]
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

end
