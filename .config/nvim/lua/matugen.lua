 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#151219',
    base01 = '#211e25',
    base02 = '#2c2930',
    base03 = '#968e9d',
    base04 = '#ccc3d3',
    base05 = '#e8e0ea',
    base06 = '#e8e0ea',
    base07 = '#e8e0ea',
    base08 = '#ffb4ab',
    base09 = '#ffaed9',
    base0A = '#d3beee',
    base0B = '#d7baff',
    base0C = '#ffaed9',
    base0D = '#d7baff',
    base0E = '#d3beee',
    base0F = '#eddcff',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- telescope.nvim
  hi('TelescopeNormal',         { fg = '#e8e0ea',          bg = '#151219' })
  hi('TelescopeBorder',         { fg = '#968e9d',             bg = '#151219' })
  hi('TelescopePromptNormal',   { fg = '#e8e0ea',          bg = '#151219' })
  hi('TelescopePromptBorder',   { fg = '#968e9d',             bg = '#151219' })
  hi('TelescopePromptPrefix',   { fg = '#d7baff',             bg = '#151219' })
  hi('TelescopePromptCounter',  { fg = '#ccc3d3',  bg = '#151219' })
  hi('TelescopePromptTitle',    { fg = '#151219',             bg = '#d7baff' })
  hi('TelescopePreviewTitle',   { fg = '#151219',             bg = '#d3beee' })
  hi('TelescopeResultsTitle',   { fg = '#151219',             bg = '#ffaed9' })
  hi('TelescopeSelection',      { fg = '#e8e0ea',          bg = '#2c2930' })
  hi('TelescopeSelectionCaret', { fg = '#d7baff',             bg = '#2c2930' })
  hi('TelescopeMatching',       { fg = '#d7baff',             bold = true })

  -- mini.pick
  hi('MiniPickNormal',         { fg = '#e8e0ea',          bg = '#151219' })
  hi('MiniPickBorder',         { fg = '#968e9d',             bg = '#151219' })
  hi('MiniPickPrompt',   { fg = '#e8e0ea',          bg = '#151219' })
  hi('MiniPickPromptPrefix',   { fg = '#d7baff',             bg = '#151219' })
  hi('MiniPickBorderText',    { fg = '#151219',             bg = '#d7baff' })
  hi('MiniPickMatchCurrent',      { fg = '#e8e0ea',          bg = '#2c2930' })
  hi('MiniPickPromptCaret', { fg = '#d7baff',             bg = '#2c2930' })
  hi('MiniPickMatchRanges',       { fg = '#d7baff',             bold = true })
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
