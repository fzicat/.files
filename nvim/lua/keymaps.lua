map= vim.api.nvim_set_keymap
vim.g.mapleader = " "
local opts = { noremap = true, silent = true }

-- ESC and colon
map('i', ']]', '<ESC>', opts)
map('n', ']', ':', opts)
map('i', 'éé', '<ESC>', opts)
map('n', 'é', ':', opts)

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
-- map('n', '<leader>m.', ':BufferLineMoveNext<CR>', { noremap = true, silent = true })
-- map('n', '<leader>m,', ':BufferLineMovePrev<CR>', { noremap = true, silent = true })

-- Background color
map('n', '<leader>d', ':lua vim.opt.background = "dark"<CR>', { noremap = true, silent = true })
map('n', '<leader>l', ':lua vim.opt.background = "light"<CR>', { noremap = true, silent = true })

-- NvimTree
map('n', '<leader>t', ':NvimTreeToggle<CR>', {silent = true })

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

map('n', '<leader>f', ':lua _find_files()<CR>', { noremap = true, silent = true })
map('n', '<leader>o', ':Telescope oldfiles<CR>', { noremap = true, silent = true })
map('n', '<leader>s', ':Telescope live_grep<CR>', { noremap = true, silent = true })

-- Better window navigation
map("n", "<leader>m", "<C-w>h", opts)
map("n", "<leader>n", "<C-w>j", opts)
map("n", "<leader>e", "<C-w>k", opts)
map("n", "<leader>i", "<C-w>l", opts)

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Move text up and down
map("n", "<A-n>", "<Esc>:m .+1<CR>==", opts)
map("n", "<A-e>", "<Esc>:m .-2<CR>==", opts)

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Move text up and down
map("v", "<A-n>", ":m .+2<CR>gv", opts)
map("v", "<A-e>", ":m .-2<CR>gv", opts)
-- map("v", "p", '"_dP', opts)

-- Switch between colemak and querty. Colemak is the default
function colemak()
    map('', 'j', 'e', { noremap = true, silent = true })
    map('', 'l', 'i', { noremap = true, silent = true })
    map('', 'J', 'E', { noremap = true, silent = true })
    map('', 'L', 'I', { noremap = true, silent = true })

    map('', 'm', 'h', { noremap = true, silent = true })
    map('', 'n', 'j', { noremap = true, silent = true })
    map('', 'e', 'k', { noremap = true, silent = true })
    map('', 'i', 'l', { noremap = true, silent = true })
    map('', 'N', 'L', { noremap = true, silent = true })
    map('', 'E', 'H', { noremap = true, silent = true })
    map('', 'I', 'J', { noremap = true, silent = true })

    map('', 'k', 'm', { noremap = true, silent = true })
    map('', 'h', 'N', { noremap = true, silent = true })
    map('', ',', 'n', { noremap = true, silent = true })
    map('', 'H', '/', { noremap = true, silent = true })
end

function qwerty()
    vim.api.nvim_del_keymap('', 'j')
    vim.api.nvim_del_keymap('', 'l')
    vim.api.nvim_del_keymap('', 'J')
    vim.api.nvim_del_keymap('', 'L')
    vim.api.nvim_del_keymap('', 'm')
    vim.api.nvim_del_keymap('', 'n')
    vim.api.nvim_del_keymap('', 'e')
    vim.api.nvim_del_keymap('', 'i')
    vim.api.nvim_del_keymap('', 'N')
    vim.api.nvim_del_keymap('', 'E')
    vim.api.nvim_del_keymap('', 'I')
    vim.api.nvim_del_keymap('', 'k')
    vim.api.nvim_del_keymap('', 'h')
    vim.api.nvim_del_keymap('', ',')
    vim.api.nvim_del_keymap('', 'H')
end

map('n', '<leader>k', ':lua colemak()<CR>', { noremap = true, silent = true })
map('n', '<leader>v', ':lua qwerty()<CR>', { noremap = true, silent = true })
colemak()
