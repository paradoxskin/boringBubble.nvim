if vim.g.bubble_map == nil then
    vim.g.bubble_map = {"o", "O", "0"}
end

if vim.g.bubble_len == nil then
    vim.g.bubble_len = 5
end

if vim.g.bubble_show == nil then
    vim.g.bubble_show = 1
end
local boring = require("boringBubble")
boring.bubble()

vim.api.nvim_create_user_command("Boring", function() boring.bubble() end, {})
vim.api.nvim_create_autocmd({"TextChanged", "TextChangedI"}, {callback = function() boring.bubble() end})
