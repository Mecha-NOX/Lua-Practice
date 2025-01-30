 -- This is a single line comment

--[[
    This
    is
    a
    Multi-line commment
]]
 -- String Concatination, print("Hello " .. "Computer")
--[[
    Data Types:
    nil
    number 1 1.24 0.1 44
    string 'hello' "hello World"
    boolean true false
    table
]]

-- local description = [[ 
-- This 
-- is
-- a
-- multi-line
-- string
-- ]]
-- print(description)
-- destruct object with nil after use, description = nil 

-- Global variable, a = 10
-- Recommended way to do Global variable, _G.b = 20

--  local str = "22"
-- prints variable type, print(type(str))
-- gives length of the string print(#string)
-- tonumber() converts input to a number print(type(tonumber(str)))

-- 2 ^ 2 is 2 to the power 2
-- / is divide by / quotient
-- % is modulas / remainder
-- * is multiply / product
-- math.pi = 3.14....
-- math.random() gives random value

-- math.randomseed(os.time()) , math.randomseed  initializes the random number generator with a specific seed value like os.time()
-- print(math.random()) gives random number according to OS time since 1 Jan 1970, format yy,mm,dd,hh.mm,ss
-- os.date() gives current date and time
-- os.clock() returns the number of seconds of CPU time for the program

-- max and min from math library print(math.min(20,1,69,.69,56,30)) = 0.69 or print(math.max(20,1,69,.69,56,30)) = 69
-- math.floor(3.9159) = 3 , math.ceil(13.1490) = 14 math.sin(), math.tan(), math.cos() expects angle in radians, if in degree use math.pi in formula radians = degrees(math.pi/180)

--[[
local str = "Hello World!"
local begin, ending = string.find(str, "orl") ....Lua allows assignment of multiple return values in a single line, str.find() gives 2 values, starting index and ending index
print("Begin: " .. begin .. "\nEnd: " .. ending)
]]

--[[ 
local str = "Hello World!"
print(string.gsub(str, "l", "HappyFace")) ...replaces all l's with HappyFace
]]

--[[
if true then
    print("Statement was true") ...... if statement syntax
end

if true then
    print("Statement is true")
elseif false then                   ...... elseif statement syntax
    print("Statement is false")
else                                            ...... else statement syntax
    print("Statement is neither true or false")
end

local age = 10
if type(age) == "number" then
    print("Age is an acceptable input")
    if age > 5 then
        print("Age is greater than 5!")         ..... Nested if statement syntax
    end
end

local age = 19
local old = age > 30 and "Very Old" or "Super Young"    .....Ternary Operator
print(old)
]]

--[[
    >
    <
    >=
    <=
    -= is != or NotEqualTo
    ==
]]

--[[
    || is or
    && is and
    ! is not
]]

--[[
for i = 0, 10, 1 do     ..... syntax for for loop
    print(i)
end
]]

local i = 10

while i > 0 do
    print(i .. " > 0")
    i = i - 1
end

local x = 1
repeat
    print("Hey There!")
    x = x + 1
until x > 10