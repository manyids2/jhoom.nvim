local Path = require("plenary.path")
local scan = require("plenary.scandir")
local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values

local M = {}

M.available = function (name)
  -- Check if the plugin can be required 
  -- need to do it yourself as it doesnt work for themes
  local configs = {}
  local cur_path = Path.parent(Path.new(debug.getinfo(1,"S").source:sub(2)))
  local cfg_path = Path.new(cur_path.filename .. "/configs/" .. name)
  local cfg_files = scan.scan_dir(cfg_path.filename)
  for _, file in ipairs(cfg_files) do
    local parts = SPLIT(file, '/')
    local filename = parts[#parts]
    parts  = SPLIT(filename, '.')
    table.insert(configs, parts[1])
  end
  return configs
end

M.pick = function(title, results, opts)
  opts = opts or {}
  pickers.new(opts, {
    prompt_title = title,
    finder = finders.new_table {
      results = results
    },
    sorter = conf.generic_sorter(opts),
  }):find()
end

return M
