require("bufferline").setup{
    options = {
        highlights = {
            background = {
                guibg = 'Red'
            },
            fill = {
                guibg = 'Red'
            },
            tab = {
                guibg = 'Red'
            },
            buffer_selected = {
                guibg = 'Red'
            },
            tab = {
                guibg = 'Red'
            },
            tab = {
                guibg = 'Red'
            },
        },
        -- numbers = function(opts)
        --     return string.format('%s.', opts.ordinal)
        --   end,
        indicator_icon = '▎',
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        -- max_name_length = 18,
        -- max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
        tab_size = 3,

        show_buffer_icons = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = false,
        persist_buffer_sort = true,
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = 'id',

        diagnostics = 'nvim_lsp',
        diagnostics_update_in_insert = false,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          return '('..count..')'
        end,

        offsets = {
          {
            filetype = "NvimTree",
            text = function()
              return vim.fn.getcwd()
            end,
            highlight = "Directory",
            text_align = "left"
          }
        }
    }
}

-- require("bufferline").setup{
--     options = {
--         numbers = function(opts)
--             return string.format('%s.', opts.ordinal)
--           end,
--         indicator_icon = '▎',
--         buffer_close_icon = '',
--         modified_icon = '●',
--         close_icon = '',
--         left_trunc_marker = '',
--         right_trunc_marker = '',
--         max_name_length = 18,
--         max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
--         tab_size = 18,
--
--         show_buffer_icons = true,
--         show_buffer_close_icons = true,
--         show_close_icon = false,
--         show_tab_indicators = true,
--         persist_buffer_sort = true,
--         enforce_regular_tabs = false,
--         always_show_bufferline = true,
--         sort_by = 'id',
--
--         diagnostics = 'nvim_lsp',
--         diagnostics_update_in_insert = false,
--         diagnostics_indicator = function(count, level, diagnostics_dict, context)
--           return '('..count..')'
--         end,
--
--         offsets = {
--           {
--             filetype = "NvimTree",
--             text = function()
--               return vim.fn.getcwd()
--             end,
--             highlight = "Directory",
--             text_align = "left"
--           }
--         }
--     }
-- }
