require("jhoom.globals")
local pickers = require("jhoom.pickers")
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

local M = {}

M.name = "jhoom"
M.enabled = false
M.available = {}

M.setup = function(config)
	M.enabled = true
	M.config = config
end

M.pick = function(name)
	local results = pickers.available(name)
	local attach_mappings = function(prompt_bufnr, _)
		actions.select_default:replace(function()
			actions.close(prompt_bufnr)
			local selection = action_state.get_selected_entry()
			-- RELOAD(name)
			require("jhoom.configs." .. name .. "." .. selection[1])
		end)
		return true
	end
	pickers.pick("config", results, { attach_mappings = attach_mappings })
end

M.sel = function()
	local results = pickers.plugins()
	local attach_mappings = function(prompt_bufnr, _)
		actions.select_default:replace(function()
			actions.close(prompt_bufnr)
			local selection = action_state.get_selected_entry()
			M.pick(selection[1])
		end)
		return true
	end
	pickers.pick("plugin", results, { attach_mappings = attach_mappings })
end

return M
