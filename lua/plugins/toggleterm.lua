return {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
        open_mapping = [[<A-h>]],
        size = 20,
        start_in_insert = true,
        insert_mappings = true,
        direction = 'horizontal',

        float_opts = {
            border = 'curved',
        },
        winbar = {
            enabled = false,
            name_formatter = function(term) -- term: Terminal
                return "Terminal #" .. term.id
            end,
        },
    },
}
