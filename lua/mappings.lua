local keymap = vim.keymap
local uv = vim.uv

-- Turn the word under cursor to upper Case
keymap.set("i", "<C-u>", "<Esc>viwUea")

-- Turn the current word under cursor into title Case
keymap.set("i", "<C-l>", "<Esc>viwuea")

-- Paste non-linewise text above or below current line, see https://stackoverflow.com/a/1346777/6064933
keymap.set("n", "<leader>p", "m`o<ESC>p``", { desc = "paste below current line" })
keymap.set("n", "<leader>P", "m`O<ESC>p``", { desc = "paste above current line" })

-- Shortcut for faster save and quit
keymap.set("n", "<leader>w", "<cmd>update<cr>", { silent = true, desc = "save buffer" })

-- Saves the file if modified and quit
keymap.set("n", "<leader>q", "<cmd>x<cr>", { silent = true, desc = "quit current window" })

-- Insert a blank line below or above current line (do not move the cursor),
-- see https://stackoverflow.com/a/16136133/6064933
keymap.set("n", "<space>o", "printf('m`%so<ESC>``', v:count1)", {
  expr = true,
  desc = "insert line below",
})
keymap.set("n", "<space>O", "printf('m`%sO<ESC>``', v:count1)", {
  expr = true,
  desc = "insert line above",
})

-- Go to start or end of line easier
keymap.set({ "n", "x" }, "H", "^")
keymap.set({ "n", "x" }, "L", "g_")

-- Edit and reload nvim config file quickly
keymap.set("n", "<leader>ev", "<cmd>tabnew $MYVIMRC <bar> tcd %:h<cr>", {
  silent = true,
  desc = "open init.lua",
})

-- Reload NVIM config
keymap.set("n", "<leader>sv", function()
  vim.cmd([[
      update $MYVIMRC
      source $MYVIMRC
    ]])
  vim.notify("Nvim config successfully reloaded!", vim.log.levels.INFO, { title = "nvim-config" })
end, {
  silent = true,
  desc = "reload init.lua",
})

-- Remove trailing whitespace characters
keymap.set("n", "<leader><space>", "<cmd>StripTrailingWhitespace<cr>", { desc = "remove trailing space" })

-- Creating new windows
keymap.set("n", "<leader>wr", "<cmd>vsplit<cr>", {silent = true, desc = "open window to the right"})
keymap.set("n", "<leader>wb", "<cmd>split<cr>", {silent = true, desc = "open window below"})

-- Switch windows
keymap.set("n", "<left>", "<c-w>h")
keymap.set("n", "<Right>", "<C-W>l")
keymap.set("n", "<Up>", "<C-W>k")
keymap.set("n", "<Down>", "<C-W>j")

-- Switch between buffers
keymap.set("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Switch to previous buffer"})
keymap.set("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Switch to next buffer"})

-- Move current visual-line selection up and down
-- TODO: Improve handling and mapping behaviour, still functioning flaky
keymap.set("v", "<leader>k", '<cmd>call utils#MoveSelection("up")<cr>', { desc = "move selection up"})
keymap.set("v", "<leader>j", '<cmd>call utils#MoveSelection("down")<cr>', { desc = "move selection down" })

-- Go to the beginning and end of current line in insert mode quickly
keymap.set("i", "<C-a>", "<HOME>")
keymap.set("i", "<C-e>", "<END>")

-- Make cursor blink to find it easier
keymap.set("n", "<leader>cb", function()
  local cnt = 0
  local blink_times = 7
  local timer = uv.new_timer()
  if timer == nil then
    return
  end

  timer:start(
    0,
    100,
    vim.schedule_wrap(function()
      vim.cmd([[
      set cursorcolumn!
      set cursorline!
    ]])

      if cnt == blink_times then
        timer:close()
      end

      cnt = cnt + 1
    end)
  )
end, { desc = "show cursor" })
