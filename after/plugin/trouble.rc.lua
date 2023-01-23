local loaded, trouble = pcall(require, "trouble")
if not loaded then
	return
end

trouble.setup({})
