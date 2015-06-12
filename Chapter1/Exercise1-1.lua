--[[
	Exercise1.1: Run the factorial example.
	What happens to your program if you enter a negative number?
	Modify the example to avoid this problem.
--]] 

-- defines a factorial function
function fact(n)
	if n == 0 then
		return 1
	else
		return n * fact(n-1)
	end
end

--[[print("enter a number:")
a = io.read("*n")			-- reads a number
print(fact(a))
--]]

--[[
	Command line interaction
	>> enter a number:
	>> -5
	>> Exercise1-1.lua:12: stack overflow
	>> stack traceback:
	>> Exercise1-1.lua:12: in function 'fact'
	
	>> ...
	
	>> Exercise1-1.lua:18: in main chunk
	>> [C]: in ?

	There is a stack overflow, because the number is less than 0. There aren't factorial for negative
	numbers.
--]]

function fact_no_negative_number(n)
	if n == 0 then
		return 1
	elseif n > 0 then
	    return n * fact(n-1)
	else
		return "No factorial for negative numbers!"
	end
end

print("enter a number:")
a = io.read("*n")			
print(fact_no_negative_number(a))