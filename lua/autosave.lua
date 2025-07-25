local M = {}

local autosave_enabled = true
local timer = nil

-- Start autosave logic
local function start_autosave()
  if timer then return end
  timer = vim.loop.new_timer()
  if not timer then
    vim.notify("Autosave: timer failed to initialize", vim.log.levels.ERROR)
    return
  end
  timer:start(300, 300, vim.schedule_wrap(function()
    if vim.bo.modified and not vim.bo.readonly and vim.api.nvim_get_mode().mode == 'n' then
      vim.cmd('silent! write')
    end
  end))
end

-- Stop and cleanup timer
local function stop_autosave()
  if timer then
    timer:stop()
    timer:close()
    timer = nil
  end
end

-- Toggle autosave fully
function M.toggle()
  if autosave_enabled then
    stop_autosave()
    vim.notify("Autosave: OFF", vim.log.levels.WARN)
  else
    start_autosave()
    vim.notify("Autosave: ON", vim.log.levels.INFO)
  end
  autosave_enabled = not autosave_enabled
end

-- User command to toggle
vim.api.nvim_create_user_command("AutoSaveToggle", M.toggle, {})

-- Start autosave on startup
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.defer_fn(start_autosave, 100)
  end,
})

return M
