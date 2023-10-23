local LuaPrint = print

local function f_time(time)
  return time < 10 and "0" .. time or time
end

local function output_t(value, tab)
  local output = ""
  local tab = tab or ""
  for k, v in pairs(value) do
    if type(v) ~= "table" or (type(v) == "table" and v.__class_instance) then
      output = output .. tab .. string.format("[%s]: %s\n", k, v)
    else
      output = output .. tab .. string.format("[%s]: {\n", k)
      output = output .. tab .. output_t(v, tab .. "  ")
      output = output .. tab .. "}\n"
    end
  end
  return output
end

local function print_t(...)
  local args = {...}
  local output = ""
  for index, arg in ipairs(args) do
    if type(arg) == "string" then
      output = output .. tostring(arg)
    elseif type(arg) == "table" then
      output = output .. string.format("\n--- %s ---\n", arg)
      output = output .. output_t(arg)
      output = output .. "-------------------------------\n"
    else
      output = output .. string.format("(%s) %s", type(arg), tostring(arg))
    end
    if #args > 1 and index < #args then
      output = output .. " "
    end
  end
  return output
end

print =
  setmetatable(
  {},
  {
    __call = function(_, ...)
      local output = print_t(...)
      LuaPrint(output)
    end,
    __index = {
      log = function(...)
        local output = ""
        if IsServer then
          local t = os.date("*t", os.time())
          output = string.format("[LOG][%s:%s:%s]: ", f_time(t.hour), f_time(t.min), f_time(t.sec))
        elseif IsClient then
          local t = {GetPosixTime()}
          output = string.format("[LOG][%s:%s:%s]: ", f_time(t[4]), f_time(t[5]), f_time(t[6]))
        end
        output = output .. print_t(...)
        LuaPrint(output)
      end,
      raw = function(...)
        LuaPrint(...)
      end
    }
  }
)
