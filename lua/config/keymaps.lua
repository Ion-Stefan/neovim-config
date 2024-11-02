-- Switch to the next buffer
function Next_buffer()
  vim.cmd("bnext")
end

-- Switch to the previous buffer
function Prev_buffer()
  vim.cmd("bprev")
end

-- Map Tab to switch to the next buffer
vim.api.nvim_set_keymap("n", "<Tab>", ":lua Next_buffer()<CR>", { noremap = true, silent = true })

-- Map Shift+Tab to switch to the previous buffer
vim.api.nvim_set_keymap("n", "<S-Tab>", ":lua Prev_buffer()<CR>", { noremap = true, silent = true })

-- Map Ctrl+D and Ctrl+U to also center the page when moving up or down
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- Enable yanking to the system clipboard
vim.opt.clipboard:append("unnamedplus")

-- Yank selection to clipboard (uses visual mode for selection)
vim.api.nvim_set_keymap('v', 'y', '"*y:!clip.exe<CR>', { noremap = true, silent = true })
