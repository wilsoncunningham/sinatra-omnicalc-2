require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add")
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params.fetch("first_number").to_f
  @second_num = params.fetch("second_number").to_f

  @result = @first_num + @second_num
  erb(:add_result)
end

get("/subtract") do
  erb(:subtraction_form)
end

get("/wizard_subtract") do
  @first_num = params.fetch("first_number").to_f
  @second_num = params.fetch("second_number").to_f

  @result = @second_num - @first_num
  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard_multiply") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result = @second_num * @first_num
  erb(:mult_result)
end

get("/divide") do
  erb(:div_form)
end

get("/wizard_divide") do
  @dividend = params.fetch("first_num").to_f
  @divisor = params.fetch("second_num").to_f

  @result = @dividend / @divisor
  erb(:div_result)
end
