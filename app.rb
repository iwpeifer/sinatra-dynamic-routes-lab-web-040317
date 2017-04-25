require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
		name = params[:name]
		response.write name.reverse
	end

	get '/square/:number' do
		num = params[:number].to_i ** 2
		num.to_s
	end

	get '/say/:number/:phrase' do
		number = params[:number].to_i
		phrase = params[:phrase]
		"#{phrase}\n" * number
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		one = params[:word1]
		two = params[:word2]
		three = params[:word3]
		four = params[:word4]
		five = params[:word5]
		"#{one} #{two} #{three} #{four} #{five}."
	end

	get '/:operation/:number1/:number2' do
		operation = params[:operation]
		num1 = params[:number1].to_i
		num2 = params[:number2].to_i
		if operation == "add"
			result = num1 + num2
			result.to_s
		elsif operation == "subtract"
			result = num1 - num2
			result.to_s
		elsif operation == "divide"
			result = num1 / num2
			result.to_s
		elsif operation == "multiply"
			result = num1 * num2
			result.to_s
		else
			"Invalid."
		end
	end



end