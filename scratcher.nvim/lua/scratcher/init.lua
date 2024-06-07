local augroup = vim.api.nvim_create_augroup("Scratcher", { clear = true })

local function main()
  print("Hello from our plugin")
end

local function create_buffer()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_buf_set_name(buf, "*scratch*")
  vim.api.nvim_set_option_value("filetype", "lua", { buf = buf })
  return buf
end

local function setup()
  vim.api.nvim_create_autocmd("VimEnter",
    { group = augroup, desc = "Set a scratch buffer on load", once = true, callback = main })
end

return { setup = setup }
