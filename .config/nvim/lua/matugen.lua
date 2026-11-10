 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#141319',
    base01 = '#201f25',
    base02 = '#2b2930',
    base03 = '#938f9d',
    base04 = '#c9c4d3',
    base05 = '#e6e1e9',
    base06 = '#e6e1e9',
    base07 = '#e6e1e9',
    base08 = '#ffb4ab',
    base09 = '#fface8',
    base0A = '#cac1ed',
    base0B = '#cabeff',
    base0C = '#fface8',
    base0D = '#cabeff',
    base0E = '#cac1ed',
    base0F = '#e6deff',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- telescope.nvim
  hi('TelescopeNormal',         { fg = '#e6e1e9',          bg = '#141319' })
  hi('TelescopeBorder',         { fg = '#938f9d',             bg = '#141319' })
  hi('TelescopePromptNormal',   { fg = '#e6e1e9',          bg = '#141319' })
  hi('TelescopePromptBorder',   { fg = '#938f9d',             bg = '#141319' })
  hi('TelescopePromptPrefix',   { fg = '#cabeff',             bg = '#141319' })
  hi('TelescopePromptCounter',  { fg = '#c9c4d3',  bg = '#141319' })
  hi('TelescopePromptTitle',    { fg = '#141319',             bg = '#cabeff' })
  hi('TelescopePreviewTitle',   { fg = '#141319',             bg = '#cac1ed' })
  hi('TelescopeResultsTitle',   { fg = '#141319',             bg = '#fface8' })
  hi('TelescopeSelection',      { fg = '#e6e1e9',          bg = '#2b2930' })
  hi('TelescopeSelectionCaret', { fg = '#cabeff',             bg = '#2b2930' })
  hi('TelescopeMatching',       { fg = '#cabeff',             bold = true })

  -- mini.pick
  hi('MiniPickNormal',         { fg = '#e6e1e9',          bg = '#141319' })
  hi('MiniPickBorder',         { fg = '#938f9d',             bg = '#141319' })
  hi('MiniPickPrompt',   { fg = '#e6e1e9',          bg = '#141319' })
  hi('MiniPickPromptPrefix',   { fg = '#cabeff',             bg = '#141319' })
  hi('MiniPickBorderText',    { fg = '#141319',             bg = '#cabeff' })
  hi('MiniPickMatchCurrent',      { fg = '#e6e1e9',          bg = '#2b2930' })
  hi('MiniPickPromptCaret', { fg = '#cabeff',             bg = '#2b2930' })
  hi('MiniPickMatchRanges',       { fg = '#cabeff',             bold = true })
end

-- Register a signal handler for SIGUSR1 (matugen updates).
-- The handler re-requires this module, which re-runs the code below, so the
-- previous handle is stopped first; otherwise handlers double on every signal.
if _G.__matugen_signal then
  _G.__matugen_signal:stop()
  _G.__matugen_signal:close()
end

local signal = vim.uv.new_signal()
_G.__matugen_signal = signal
signal:start(
  'sigusr1',
  vim.schedule_wrap(function()
    package.loaded['matugen'] = nil
    require('matugen').setup()
  end)
)

return M
