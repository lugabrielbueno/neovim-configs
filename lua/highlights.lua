local base = require("base")

vim.api.nvim_set_hl(0, "Normal", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { ctermbg = "NONE", bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "NvimTreeNormal", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "Tabline", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "TablineFill", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "TablineSel", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "Pmenu", { ctermbg = "NONE", bg = "NONE" })

-- Telescope
vim.api.nvim_set_hl(0, "TelescopeNormal", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopeTitle", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopeMultiSelection", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopeMultiIcon", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopePromptNormal", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopePromptTitle", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { ctermbg = "NONE", bg = "NONE" })

--vim.api.nvim_set_hl(0, "FloatBorder", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "FloatShadow", { bg = "#2e3440", blend = 80 })
vim.api.nvim_set_hl(0, "FloatShadowThrough", { bg = "#2e3440", blend = 100 })
vim.api.nvim_set_hl(0, "BufferVisibleSign", { ctermbg = "NONE", bg = "NONE" })

-- Warning
vim.api.nvim_set_hl(0, "LspDiagnosticsSignWarning", { fg = "#ceb42f", bg = "NONE" })
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultWarning", { fg = "#ceb42f", bg = "NONE" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#ceb42f", bg = "NONE" })
vim.api.nvim_set_hl(0, "LspDiagnosticsSignWarn", { fg = "#ceb42f", bg = "NONE" })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = "#ceb42f", bg = "NONE" })
vim.api.nvim_set_hl(0, "DiagnosticFloatingWarn", { fg = "#ceb42f", bg = "NONE" })

-- Error
vim.api.nvim_set_hl(0, "LspDiagnosticsSignError", { fg = "#e67e80", bg = "NONE" })
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultError", { fg = "#e67e80", bg = "NONE" })
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#e67e80", bg = "NONE" })
vim.api.nvim_set_hl(0, "LspDiagnosticsSignError", { fg = "#e67e80", bg = "NONE" })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = "#e67e80", bg = "NONE" })
vim.api.nvim_set_hl(0, "DiagnosticFloatingError", { fg = "#e67e80", bg = "NONE" })

-- Hint
vim.api.nvim_set_hl(0, "LspDiagnosticsSignHint", { fg = "#967499", bg = "NONE" })
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultHint", { fg = "#967499", bg = "NONE" })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#967499", bg = "NONE" })
vim.api.nvim_set_hl(0, "LspDiagnosticsSignHint", { fg = "#967499", bg = "NONE" })
vim.api.nvim_set_hl(0, "HintMsg", { fg = "#967499", bg = "NONE" })
vim.api.nvim_set_hl(0, "DiagnosticFloatingHint", { fg = "#967499", bg = "NONE" })

-- Info
vim.api.nvim_set_hl(0, "LspDiagnosticsSignInfo", { fg = "LightBlue", bg = "NONE" })
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultInfo", { fg = "LightBlue", bg = "NONE" })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "LightBlue", bg = "NONE" })
vim.api.nvim_set_hl(0, "LspDiagnosticsSignInfo", { fg = "LightBlue", bg = "NONE" })
vim.api.nvim_set_hl(0, "InfoMsg", { fg = "LightBlue", bg = "NONE" })
vim.api.nvim_set_hl(0, "DiagnosticFloatingInfo", { fg = "LightBlue", bg = "NONE" })
vim.api.nvim_set_hl(0, "DiagnosticFloatingInfo", { fg = "LightBlue", bg = "NONE" })

-- cmp kind
vim.api.nvim_set_hl(0, "CmpItemKindVariable", { bg = "NONE", fg = "LightBlue" })
vim.api.nvim_set_hl(0, "CmpItemKindText", { bg = "NONE", fg = "LightBlue" })
vim.api.nvim_set_hl(0, "CmpItemKindValue", { bg = "NONE", fg = "LightBlue" })
vim.api.nvim_set_hl(0, "CmpItemKindInterface", { bg = "NONE", fg = "#569CD6" })
vim.api.nvim_set_hl(0, "CmpItemKindFunction", { bg = "NONE", fg = "#b286ce" })
vim.api.nvim_set_hl(0, "CmpItemKindMethod", { bg = "NONE", fg = "#b286ce" })
vim.api.nvim_set_hl(0, "CmpItemKindModule", { bg = "NONE", fg = "#b286ce" })
vim.api.nvim_set_hl(0, "CmpItemKindConstant", { bg = "NONE", fg = "White" })
vim.api.nvim_set_hl(0, "CmpItemKindEvent", { bg = "NONE", fg = "White" })
vim.api.nvim_set_hl(0, "CmpItemKindField", { bg = "NONE", fg = "White" })

-- Dashboard
vim.api.nvim_set_hl(0, "DashboardCenter", { bg = "NONE", fg = "#6c959b" })
vim.api.nvim_set_hl(0, "DashboardFooter", { bg = "NONE", fg = "#278ead" })
vim.api.nvim_set_hl(0, "DashboardShortcut", { bg = "NONE", fg = "#278ead" })
vim.api.nvim_set_hl(0, "DashboardHeader", { bg = "NONE", fg = "#d6d6d6" })

vim.api.nvim_set_hl(0, "NoiceCmdline", { bg = "NONE", ctermbg = "NONE", fg = "#d6d6d6" })
vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { bg = "NONE", ctermbg = "NONE", fg = "#d6d6d6" })
vim.api.nvim_set_hl(0, "NoiceCmdlineIconCmdline", { bg = "NONE", ctermbg = "NONE", fg = "#d6d6d6" })
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorderCmdline", { bg = "NONE", ctermbg = "NONE", fg = "#d6d6d6" })

-- Float diagnostic header
vim.api.nvim_set_hl(0, "HeaderDiagnosticOpenFloat", { bg = "NONE", fg = "#ffffff", bold = true })

vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "NONE", ctermbg = "NONE", fg = "#a3be8c" })
vim.api.nvim_set_hl(0, "GitSignsChange", { bg = "NONE", ctermbg = "NONE", fg = "#81a1c1" })
vim.api.nvim_set_hl(0, "GitSignsDelete", { bg = "NONE", ctermbg = "NONE", fg = "#bf616a" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "FoldColumn", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "SignColumnSB", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "LineNR", { bg = "NONE", ctermbg = "NONE", fg = "#6b6b6b" })
if base.current_colorscheme == "kanagawa" then
	vim.api.nvim_set_hl(0, "CursorLineNR", { bg = "NONE", ctermbg = "NONE", fg = "#ff9e3b" })
end

-- Gruvbox colors with transparency
if base.current_colorscheme == "gruvbox" then
	vim.api.nvim_set_hl(0, "GruvboxYellowSign", { bg = "NONE", ctermbg = "NONE", fg = "#fabd2f" })
	vim.api.nvim_set_hl(0, "GruvboxRedSign", { bg = "NONE", ctermbg = "NONE", fg = "#fb4934" })
	vim.api.nvim_set_hl(0, "GruvboxAquaSign", { bg = "NONE", ctermbg = "NONE", fg = "#8ec07c" })
	vim.api.nvim_set_hl(0, "GruvboxBlueSign", { bg = "NONE", ctermbg = "NONE", fg = "#83a598" })
	vim.api.nvim_set_hl(0, "GruvboxOrangeSign", { bg = "NONE", ctermbg = "NONE", fg = "#fe8019" })
	vim.api.nvim_set_hl(0, "GruvboxGreenSign", { bg = "NONE", ctermbg = "NONE", fg = "#b8bb26" })
	vim.api.nvim_set_hl(0, "GruvboxPurpleSign", { bg = "NONE", ctermbg = "NONE", fg = "#d3869b" })
end
