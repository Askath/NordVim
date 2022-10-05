-- [[ Setting options ]]
-- See `:help vim.o`

-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true;

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Set colorscheme
vim.o.termguicolors = true
vim.cmd [[colorscheme nord]]

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>gg', ":LazyGit<CR>", { desc = 'Lazygit' })
vim.keymap.set('n', '<leader>cs', ":SymbolsOutline<CR>", { desc = 'Structure' })
vim.keymap.set('n', '<leader>e', ":NvimTreeFindFile<CR>", { desc = 'Explorer' })
vim.keymap.set('n', '<leader>h', ":noh<CR>")


vim.keymap.set('n', '<c-l>', "<c-w>l")
vim.keymap.set('n', '<c-h>', "<c-w>h")
vim.keymap.set('n', '<c-j>', "<c-w>j")
vim.keymap.set('n', '<c-k>', "<c-w>k")

vim.keymap.set('n', '<leader>fr', vim.lsp.buf.rename, { desc = "Rename" })

vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Action' })
vim.keymap.set('n', '<leader>cd', vim.lsp.buf.definition, { desc = '[G]oto [D]efinition' })
vim.keymap.set('n', '<leader>ci', vim.lsp.buf.implementation, { desc = '[G]oto [I]mplementation' })
vim.keymap.set('n', '<leader>cr', require('telescope.builtin').lsp_references, { desc = 'References' })
vim.keymap.set('n', '<leader>ct', ":TodoTrouble<CR>", { desc = "Show TODOs" })

-- See `:help K` for why this keymap
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Hover Documentation' })
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { desc = 'Signature Documentation' })

vim.keymap.set('n', '<leader>fk', ":e ~/.config/nvim/lua/tara/options.lua<CR>", { desc = ' Open Config ' })


-- Format file
vim.keymap.set('n', '<leader>ff', ":Format<CR>", { desc = "Format code" })

-- Trouble
vim.keymap.set('n', '<leader>td', ":TroubleToggle document_diagnostics<CR>", { desc = "Document Diagnostics" })
vim.keymap.set('n', '<leader>twd', ":TroubleToggle workspace_diagnostics<CR>", { desc = "Workspace Diagnostics" })
vim.keymap.set('n', '<leader>tr', ":TroubleToggle lsp_references<CR>", { desc = "References" })
vim.keymap.set('n', '<leader>tq', ":TroubleToggle quickfix<CR>", { desc = "Quickfix" })
vim.keymap.set('n', '<leader>tt', ":TroubleToggle<CR>", { desc = "Toggle" })
