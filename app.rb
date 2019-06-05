require_relative 'config/environment'

#This now gives us the ability to create new 
#instances of the TextAnalyzer class from 
#within our controller.
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]

    @analyzed_text = TextAnalyzer.new(text_from_user)
 
  	erb :results
  end
end
