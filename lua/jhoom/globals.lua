P = function(v)
  print(vim.inspect(v))
  return v
end

RELOAD = function(...)
  return require("plenary.reload").reload_module(...)
end

R = function(name)
  RELOAD(name)
  return require(name)
end

CV = function (table, element)
  for _, value in pairs(table) do
    if value == element then
      return true
    end
  end
  return false
end

CE = function (table, element)
  for _, value in ipairs(table) do
    if value == element then
      return true
    end
  end
  return false
end

SPLIT = function (filepath, sep)
  local formatted = string.format("([^%s]+)", sep)
  local t = {}
  for str in string.gmatch(filepath, formatted) do
    table.insert(t, str)
  end
  return t
end

