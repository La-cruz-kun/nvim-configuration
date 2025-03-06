local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("vim-option")

require("lazy").setup("plugins")

Yellow = "#bbbb00"
White = "#ababab"
White2 = "#dddddd"
Grey = "#777777"
Green = "#30ab30"
Blue = "#0000ab"
Blue2 = "#1020bb"
Reddish = "#db5555"

-- :TSHighlightCapturesUnder

vim.api.nvim_set_hl(0, "@type.c", { fg = Yellow, bold = true})
vim.api.nvim_set_hl(0, "@type", { fg = White2})
vim.api.nvim_set_hl(0, "@constant", { fg = White2})
vim.api.nvim_set_hl(0, "@constant.macro", { fg = White2, bold = true})
vim.api.nvim_set_hl(0, "@variable", { fg = White2})
vim.api.nvim_set_hl(0, "@number", { fg = White2})
vim.api.nvim_set_hl(0, "@operator", { fg = White2})
vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = White2})
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = White2})
vim.api.nvim_set_hl(0, "@keyword.directive.define", { fg = White2} )
vim.api.nvim_set_hl(0, "@keyword.directive", { fg = White2} )
vim.api.nvim_set_hl(0, "@function", { fg = White})
vim.api.nvim_set_hl(0, "@function.call", { fg = White})
vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = Yellow, bold = true})
vim.api.nvim_set_hl(0, "@keyword.return", { fg = Yellow, bold = true})
vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = Yellow, bold = true})
vim.api.nvim_set_hl(0, "@keyword.import", { fg = Grey})
vim.api.nvim_set_hl(0, "@comment", { fg = Reddish})
vim.api.nvim_set_hl(0, "@string", { fg = Green})
vim.api.nvim_set_hl(0, "@boolean", { fg = White})


