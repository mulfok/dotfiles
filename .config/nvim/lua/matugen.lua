 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#18120c',
    base01 = '#251f17',
    base02 = '#302921',
    base03 = '#9e8e7c',
    base04 = '#d6c4b0',
    base05 = '#ede0d4',
    base06 = '#ede0d4',
    base07 = '#ede0d4',
    base08 = '#ffb4ab',
    base09 = '#bfcf62',
    base0A = '#e8c08f',
    base0B = '#ffb958',
    base0C = '#bfcf62',
    base0D = '#ffb958',
    base0E = '#e8c08f',
    base0F = '#ffddb5',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- telescope.nvim
  hi('TelescopeNormal',         { fg = '#ede0d4',          bg = '#18120c' })
  hi('TelescopeBorder',         { fg = '#9e8e7c',             bg = '#18120c' })
  hi('TelescopePromptNormal',   { fg = '#ede0d4',          bg = '#18120c' })
  hi('TelescopePromptBorder',   { fg = '#9e8e7c',             bg = '#18120c' })
  hi('TelescopePromptPrefix',   { fg = '#ffb958',             bg = '#18120c' })
  hi('TelescopePromptCounter',  { fg = '#d6c4b0',  bg = '#18120c' })
  hi('TelescopePromptTitle',    { fg = '#18120c',             bg = '#ffb958' })
  hi('TelescopePreviewTitle',   { fg = '#18120c',             bg = '#e8c08f' })
  hi('TelescopeResultsTitle',   { fg = '#18120c',             bg = '#bfcf62' })
  hi('TelescopeSelection',      { fg = '#ede0d4',          bg = '#302921' })
  hi('TelescopeSelectionCaret', { fg = '#ffb958',             bg = '#302921' })
  hi('TelescopeMatching',       { fg = '#ffb958',             bold = true })

  -- mini.pick
  hi('MiniPickNormal',         { fg = '#ede0d4',          bg = '#18120c' })
  hi('MiniPickBorder',         { fg = '#9e8e7c',             bg = '#18120c' })
  hi('MiniPickPrompt',   { fg = '#ede0d4',          bg = '#18120c' })
  hi('MiniPickPromptPrefix',   { fg = '#ffb958',             bg = '#18120c' })
  hi('MiniPickBorderText',    { fg = '#18120c',             bg = '#ffb958' })
  hi('MiniPickMatchCurrent',      { fg = '#ede0d4',          bg = '#302921' })
  hi('MiniPickPromptCaret', { fg = '#ffb958',             bg = '#302921' })
  hi('MiniPickMatchRanges',       { fg = '#ffb958',             bold = true })
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
