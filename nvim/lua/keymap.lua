local opts = { noremap = true, silent = true }
local map=vim.api.nvim_set_keymap

local pluginKeyMap={}
--nvim-tree
map("n", "<A-m>", "<Cmd>NvimTreeToggle<CR>", opts)
map("n", "<C-a>", "<C-v>",opts)
map("n", "<C-h>", "<Cmd>BufferLineCyclePrev<CR>", opts)
map("n", "<C-l>", "<Cmd>BufferLineCycleNext<CR>", opts)
map("n", "<C-q>", "<Cmd>bp|bd#<CR>", opts)
map("t","<A-q>","<C-\\><C-n>",opts)
--lsp

pluginKeyMap.cmp= function(cmp)
  return {
    -- 上一个
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    -- 下一个
    ['<C-j>'] = cmp.mapping.select_next_item(),
    -- 出现补全
    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- 取消
    ['<A-,>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- 确认
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  }
end


return pluginKeyMap
