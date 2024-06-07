local augroup = vim.api.nvim_create_augroup("Scratcher", { clear = true })

local function main()
  print("Hello from our plugin")
end

local function setup()
  vim.api.nvim_create_autocmd("VimEnter",
    { group = augroup, desc = "Set a scratch buffer on load", once = true, callback = main })
end

return { setup = setup }
