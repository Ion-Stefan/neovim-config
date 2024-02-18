-- Switch to the next buffer
function Next_buffer()
  vim.cmd("bnext")
end
-- Switch to the previous buffer
function Prev_buffer()
  vim.cmd("bprev")
end

-- Map tab to switch to the next buffer
vim.api.nvim_set_keymap("n", "<Tab>", ":lua Next_buffer()<CR>", { noremap = true, silent = true })
-- Map shift+tab to switch to the previous buffer
vim.api.nvim_set_keymap("n", "<S-Tab>", ":lua Prev_buffer()<CR>", { noremap = true, silent = true })

-- Map ctrl+d and ctrl+u to also center the page when moving up or down
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>:normal! zz<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>:normal! zz<CR>", { noremap = true, silent = true })

--yanking outside of neovim
vim.api.nvim_set_keymap("n", "y", [[:'<,'>w !xclip -selection clipboard<CR>y]], { noremap = true })
vim.api.nvim_set_keymap("n", "yy", [[:'<,'>w !xclip -selection clipboard<CR>yy]], { noremap = true })

-- Keybinds for Trouble
vim.keymap.set("n", "<leader>tt", function()
  require("trouble").toggle()
end)
