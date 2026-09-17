 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#111318',
    base01 = '#1d2024',
    base02 = '#272a2f',
    base03 = '#8d9199',
    base04 = '#c3c6cf',
    base05 = '#e1e2e9',
    base06 = '#e1e2e9',
    base07 = '#e1e2e9',
    base08 = '#ffb4ab',
    base09 = '#d9bde3',
    base0A = '#bcc7db',
    base0B = '#a4c9fe',
    base0C = '#d9bde3',
    base0D = '#a4c9fe',
    base0E = '#bcc7db',
    base0F = '#93000a',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#e1e2e9',          bg = '#111318' })
  hi('TelescopeBorder',         { fg = '#8d9199',             bg = '#111318' })
  hi('TelescopePromptNormal',   { fg = '#e1e2e9',          bg = '#111318' })
  hi('TelescopePromptBorder',   { fg = '#8d9199',             bg = '#111318' })
  hi('TelescopePromptPrefix',   { fg = '#a4c9fe',             bg = '#111318' })
  hi('TelescopePromptCounter',  { fg = '#c3c6cf',  bg = '#111318' })
  hi('TelescopePromptTitle',    { fg = '#111318',             bg = '#a4c9fe' })
  hi('TelescopePreviewTitle',   { fg = '#111318',             bg = '#bcc7db' })
  hi('TelescopeResultsTitle',   { fg = '#111318',             bg = '#d9bde3' })
  hi('TelescopeSelection',      { fg = '#e1e2e9',          bg = '#272a2f' })
  hi('TelescopeSelectionCaret', { fg = '#a4c9fe',             bg = '#272a2f' })
  hi('TelescopeMatching',       { fg = '#a4c9fe',             bold = true })
end

 -- Register a signal handler for SIGUSR1 (matugen updates)
 local signal = vim.uv.new_signal()
 signal:start(
   'sigusr1',
   vim.schedule_wrap(function()
     package.loaded['matugen'] = nil
     require('matugen').setup()
   end)
 )

 return M
