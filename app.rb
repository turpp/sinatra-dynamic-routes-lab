require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name=params[:name]
    @reversed_name= @name.reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do 
    @num=params[:number]
    @squared=@num.to_i*@num.to_i
    "#{@squared}"
  end

  get '/say/:number/:phrase' do 
    @num=params[:number]
    @phrase=params[:phrase]
    "#{@phrase*@num.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1=params[:word1]
    @w2=params[:word2]
    @w3=params[:word3]
    @w4=params[:word4]
    @w5=params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do 
    @operation=params[:operation]
    @num1=params[:number1]
    @num2=params[:number2]

  if @operation=="add"
    "#{@num1.to_i + @num2.to_i}"
  elsif @operation=="divide"
    "#{@num1.to_i / @num2.to_i}"
  elsif @operation=="subtract"
    "#{@num1.to_i - @num2.to_i}"
  else @opersation=="multiply"
    "#{@num1.to_i * @num2.to_i}"
  end
end



end