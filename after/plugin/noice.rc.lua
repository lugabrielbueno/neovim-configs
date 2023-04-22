local loaded, noice = pcall(require, "noice")
local loaded_not, notify = pcall(require, "notify")
if not loaded then
	return
end
noice.setup({
	-- add any options here
})
if not loaded_not then
	return
end
notify.setup({
	background_colour = "#0000000",
	-- add any options here
})
