require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase] * params[:number].to_i}"
    # binding.pry
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]}."
  end

  get '/:operation/:num1/:num2' do

    @operation = params[:operation]
    @num1 = params[:num1]
    @num2 = params[:num2]

    if @operation == "add"
      "#{@num1.to_i + @num2.to_i}"
    elsif @operation == "subtract"
      "#{@num1.to_i - @num2.to_i}"
    elsif @operation == "multiply"
      "#{@num1.to_i * @num2.to_i}"
    elsif @operation == "divide"
      "#{@num1.to_i / @num2.to_i}"
    end

  end

end
