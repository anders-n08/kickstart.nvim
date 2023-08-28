vim.cmd [[colorscheme iceberg]]

local keymap = vim.keymap.set

-- Float terminal
-- keymap("n", "<A-d>", "<cmd>Lspsaga open_floaterm<CR>", { silent = true })
-- close floaterm
-- keymap("t", "<A-d>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], { silent = true })

keymap("n", "<A-d>", "<cmd>ToggleTerm<CR>", { silent = true })
keymap("t", "<A-d>", [[<C-\><C-n><cmd>ToggleTerm<CR>]], { silent = true })

