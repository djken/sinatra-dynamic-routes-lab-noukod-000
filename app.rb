require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    erb :reversename
  end

  get '/square/:number' do
    erb :square
  end

  get '/say/:number/:phrase' do
    erb :say_number_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    erb :say_words
  end

  get '/:operation/:number1/:number2' do
    @num1, @num2, @operation = params[:number1].to_i, params[:number2].to_i, params[:operation]
    case @operation
    when 'add'
      "#{@num1 + @num2}"
    when 'subtract'
      "#{@num1 - @num2}"
    when 'multiply'
    "#{@num1 * @num2}"
    when 'divide'
    "#{@num1 / @num2}"
    end
  end
end
