map= vim.api.nvim_set_keymap
vim.g.mapleader = " "
local opts = { noremap = true, silent = true }

-- Save and close
map('n', '<leader>w', ':w<CR>', { noremap = true, silent = true }) 
map('n', '<leader>q', ':wq<CR>', { noremap = true, silent = true }) 
map('n', '<leader>Q', ':q!<CR>', { noremap = true, silent = true }) 

-- Buffers
-- if nvimtree is open, :bdelete bring nvimtree on main window and close nvimtree window.
-- so I toggle it after. TODO: add a condition
map('n', '<C-c>', ':bdelete<CR>:NvimTreeToggle<CR>', { noremap = true, silent = true }) 

-- Bufferline
map('n', '<leader>b', ':BufferLinePick<CR>', { noremap = true, silent = true })
map('n', '<leader>x', ':BufferLinePickClose<CR>', { noremap = true, silent = true })
map('n', '<TAB>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
map('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
map('n', '<leader>m.', ':BufferLineMoveNext<CR>', { noremap = true, silent = true })
map('n', '<leader>m,', ':BufferLineMovePrev<CR>', { noremap = true, silent = true })

-- Background color
map('n', '<leader>d', ':lua vim.opt.background = "dark"<CR>', { noremap = true, silent = true })
map('n', '<leader>l', ':lua vim.opt.background = "light"<CR>', { noremap = true, silent = true })

-- NvimTree
map('n', '<leader>e', ':NvimTreeToggle<CR>', {silent = true })

-- Hope bindings
map('n', '<leader>h', ':HopWord<CR>', { noremap = true, silent = true })
map('n', '<leader>H', ':HopLineStart<CR>', { noremap = true, silent = true })


-- Telescope bindings
function _find_files()
    local is_git = os.execute("git status &>/dev/null")
    if (is_git == 0) then
        vim.cmd(":Telescope git_files")
    else
        vim.cmd(":Telescope find_files")
    end
end

map('n', '<Leader>f', ':lua _find_files()<CR>', { noremap = true, silent = true })
map('n', '<Leader>o', ':Telescope oldfiles<CR>', { noremap = true, silent = true })
map('n', '<Leader>s', ':Telescope live_grep<CR>', { noremap = true, silent = true })

-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Move text up and down
map("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)
map("n", "<A-k>", "<Esc>:m .-2<CR>==", opts)

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Move text up and down
map("v", "<A-j>", ":m .+2<CR>gv", opts)
map("v", "<A-k>", ":m .-2<CR>gv", opts)
-- map("v", "p", '"_dP', opts)

-- Switch between colemak and querty. Colemak is the default
function colemak()
    map('n', 'j', 'e', { noremap = true, silent = true })
    map('n', 'l', 'i', { noremap = true, silent = true })
    map('n', 'J', 'E', { noremap = true, silent = true })
    map('n', 'L', 'I', { noremap = true, silent = true })

    map('n', 'm', 'h', { noremap = true, silent = true })
    map('n', 'n', 'j', { noremap = true, silent = true })
    map('n', 'e', 'k', { noremap = true, silent = true })
    map('n', 'i', 'l', { noremap = true, silent = true })
    map('n', 'N', 'L', { noremap = true, silent = true })
    map('n', 'E', 'H', { noremap = true, silent = true })
    map('n', 'I', 'J', { noremap = true, silent = true })

    map('n', 'k', 'm', { noremap = true, silent = true })
    map('n', 'h', 'N', { noremap = true, silent = true })
    map('n', ',', 'n', { noremap = true, silent = true })
    map('n', 'H', '/', { noremap = true, silent = true })
end

function qwerty()
    vim.api.nvim_del_keymap('n', 'j')
    vim.api.nvim_del_keymap('n', 'l')
    vim.api.nvim_del_keymap('n', 'J')
    vim.api.nvim_del_keymap('n', 'L')
    vim.api.nvim_del_keymap('n', 'm')
    vim.api.nvim_del_keymap('n', 'n')
    vim.api.nvim_del_keymap('n', 'e')
    vim.api.nvim_del_keymap('n', 'i')
    vim.api.nvim_del_keymap('n', 'N')
    vim.api.nvim_del_keymap('n', 'E')
    vim.api.nvim_del_keymap('n', 'I')
    vim.api.nvim_del_keymap('n', 'k')
    vim.api.nvim_del_keymap('n', 'h')
    vim.api.nvim_del_keymap('n', ',')
    vim.api.nvim_del_keymap('n', 'H')
end

map('n', '<Leader>k', ':lua colemak()<CR>', { noremap = true, silent = true })
map('n', '<Leader>v', ':lua qwerty()<CR>', { noremap = true, silent = true })
colemak()
