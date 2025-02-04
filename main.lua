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
-- ^ is power
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
    ~= is != or NotEqualTo
    ==
]]

--[[
    || is or
    && is and
    ! is not
]]

--[[
for i = 0, 10, 1 do     ..... syntax for For loop
    print(i)
end
]]

--[[
local i = 10

while i > 0 do                  ..... syntax for while loop
    print(i .. " > 0")
    i = i - 1
end

local x = 1
repeat                          ..... syntax for Repeat loop (its like do-while loop)
    print("Hey There!")
    x = x + 1
until x > 10 
]]

--[[
local ans = io.read()                         ..... syntax for taking user input
print(ans)
]]

--[[
io.write("Input 10 + 5: ")                         ..... syntax for taking user input in the same line
local ans = io.read()
print("\nYour Answer: " .. ans)
]]

--[[
local arr = {10, true, "Hello world!", 2.4567}
table.insert(arr, 2, "lol")                         ..... syntax for inserting an index in the table
table.remove(arr, 3)                         ..... syntax for removing an index in the table
for i = 1, #arr do
    print("Value at Index (" .. i .. ") is (" .. tostring(arr[i]) .. ") of type: (" .. type(arr[i]) .. ")")
end
]]

--[[
local arr = {
    {1, 2, 3},
    {4, 5, 6},
    {7, 8, 9}
}
for i =1, #arr do
    for j = 1, #arr[i] do           .... syntax for accessing 2-d array
        print(arr[i][j])
    end
end
]]

--[[
local add10 = function(number)
    local outcome = 10 + number
    return number, outcome                  .... syntax for returning 2 values
end
local _, output = add10(20)                  .... syntax for telling, that we dont strictly need the 1st value
print("Had 10 added to it: " .. output)
]]

--[[
local function counter(number, end_num)
    local count = number + 1

    if(count < end_num) then
        print(count)
        return counter(count, end_num)                  .... example of Recursive Function
    end

    return count
end

print(counter(10, 15))
]]

--[[
local function counter()
    local count = 0

    return function()           .... example of anonymous Function and Closures/Lexical Scoping
        count = count + 1
        return count
    end
end

local x = counter()
]]
--[[
local function sum(...)                     ..... function can take n number of inputs
    local sums = 0
     for _, value in pairs({...}) do        .... using pairs will keep the key and its associated value
        sums = sums + value
     end                                    ..... syntax for when you dont know the amount of inputs of a function
    return sums
end

print(sum(10, 5))
print(sum(20, 30, 70))
]]

--[[
local routine_1 = coroutine.create(
    function ()
        for i = 1, 10, 1 do
            print("(Routine 1): " .. i)

            if i == 5 then
                coroutine.yield()
            end
        end
    end
)

local routine_func = function()                 ---- working with coroutines
    for i = 11, 20 do
        print("(Routine 2): " .. i)
    end
end

local routine_2 = coroutine.create(routine_func)

coroutine.resume(routine_1) -- suspended
coroutine.resume(routine_2)
--coroutine.resume(routine_1) -- dead

if coroutine.status(routine_1) == "suspended" then
    coroutine.resume(routine_1)
end
print("Routine-1 Status: " .. coroutine.status(routine_1))
print("Routine-2 Status: " .. coroutine.status(routine_2))
]]

--[[
-- io.output("myFile.txt")                                              ---- opens a file of that name if doesn't exist, creates one
-- io.write("Hello World!" .. " This file is created with Lua!")        ---- writes in a file
-- io.close()                                                           ---- closes the file
]]

--[[
io.input("myFile.txt")                                                  ---- opens a file of the name
local file = io.read()                                                  ---- reads the file
io.close()                                                              ---- closes the file
print(file)
]]

--[[
local file = io.open("myFile.txt", "w")             .... another way to open a file in write mode
for i = 1, 10, 1 do
    file:write("Number: " .. i .. "\n")
end
file.close()
]]

--[[
local file = io.open("myFile.txt", "a")             .... another way to open a file in append mode
for i = 11, 30, 1 do
    file:write("Number: " .. i .. "\n")
end
file.close()
]]

--[[
local file = io.open("myFile.txt", "r")             ..... another way to open a file in read mode
local reads = file:read("*all")
file:close()
print(reads)
]]

--[[
local past = os.time({
    year = 2000,
    month = 10,
    day = 1,
    hour = 13,
    min = 20,
    sec = 10
})

print(os.time() - past) 
same as print
(os.difftime(os.time(), past))          .... gives time since the Unix Epoch till the date and time inputted, in seconds
]]

-- print(os.getenv("USERNAME"))            ..... prints environment variable name
-- os.rename("CurrentName.Extension", "NewName.Extension")          .... changes the current name and extension to new name and extension
-- os.remove("filename.extension")              .... deletes the file of name
-- os.execute("git status")                        .... executes the command in the terminal

--[[
local start = os.clock()
for i = 1, 1000000000 do
    local x = 10                            
end
print(os.clock() - start)                       .... gives time taken to execute this command
]]

--[[
for i = 1, 10 do
    print(i)
    if i == 5 then
        os.exit()                           .... terminates the program
    end
end
]]

--[[
local mod = require("mymath")               .... loads the given module
print(mod.add(5, 10))
print(mod.power(2, 4))
]]

--[[                                        .... example of OOPs in Lua
local function Pet(name)
    name = name or "Luis"
    return {
        name = name,
        status = "Hungry",

        feed = function(self)
            print(name .. " is fed")
            self.status = "Full"
        end
    }
end

local function Dog(name, breed)
    local dog = Pet(name)

    dog.breed = breed
    dog.loyalty = 0

    dog.isLoyal = function(self)
        return self.loyalty >= 10
    end

    dog.feed = function(self)
        print(name .. " is fed")
        self.status = "Full"
        self.loyalty = self.loyalty + 5
    end

    dog.bark = function(self)
        print("Woof Woof!")
    end

    return dog
end

local lassy = Dog("Lassy", "Poodle")
lassy:feed()
lassy:feed()
if lassy:isLoyal() then
    print("Will Protect against intruders")
else
    print("Will not Protect against intruders")
end

print(lassy.breed)
lassy:bark()
]]

local function addTableValues(x, y)
    return x.num + y.num
end

local metatable = {
    __add = addTableValues,
    __sub = function(x, y)
        return x.num - y.num
    end
}

local tbl1 = {num = 50}
local tbl2 = {num = 10}

setmetatable(tbl1, metatable)

local ans = tbl1 - tbl2
print(ans)