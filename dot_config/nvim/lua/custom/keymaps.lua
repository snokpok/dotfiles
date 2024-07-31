-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

vim.keymap.set('n', '<leader>S', function() require("spectre").toggle() end, {
    desc = "Toggle Spectre"
})
vim.keymap.set('n', '<leader>sw', function() require("spectre").open_visual({ select_word = true }) end, {
    desc = "Search current word"
})
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
    desc = "Search current word"
})
vim.keymap.set('n', '<leader>sp', function() require("spectre").open_file_search({ select_word = true }) end, {
    desc = "Search on current file"
})

vim.keymap.set('n', '<Tab>', '<cmd>bn<CR>')
vim.keymap.set('n', '<S-Tab>', '<cmd>bp<CR>')
vim.keymap.set('n', '<leader>x', '<cmd>bd<CR>')

vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
vim.g.omni_sql_no_default_maps = 1

vim.keymap.set('n', '<C-p>', require('fzf-lua').builtin, { desc = 'Builtin' })
vim.keymap.set('n', '<leader>sf', require('fzf-lua').files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader><space>', require('fzf-lua').buffers, { desc = 'Buffers' })
vim.keymap.set('n', '<leader>sg', require('fzf-lua').live_grep, { desc = 'Live [G]rep' })
vim.keymap.set('n', '<leader>ws', require('fzf-lua').lsp_live_workspace_symbols, { desc = 'LSP Live [W]orkspace [S]ymbols' })
vim.keymap.set('n', '<leader>ds', require('fzf-lua').lsp_document_symbols, { desc = 'LSP [D]ocument [S]ymbols' })
vim.keymap.set('n', '<C-s>w', require('fzf-lua').grep_cword, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sr', require('fzf-lua').resume, { desc = '[R]esume' })
vim.keymap.set('n', '<leader>dd', require('fzf-lua').lsp_document_diagnostics, { desc = '[S]earch Document [D]iagnostics' })
vim.keymap.set('n', '<leader>wd', require('fzf-lua').lsp_workspace_diagnostics, { desc = '[S]earch Workspace [D]iagnostics' })
