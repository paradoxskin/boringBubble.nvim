local M = {}

local opt = {
    bubble = {
        map = {"o", "O", "0"},
        len = 5,
        event = {"TextChanged", "TextChangedI"}
    },
    fun = {
        draw = function (bubble)
            vim.g.bubble = bubble
        end,
        prize = function (number)
        end
    }
}

local mx = 0

local bubble = function()
    local tmp = math.floor(math.random() * mx)
    local bubble = ""
    local last = nil
    local same = true
    local choice = 0
    for _ = 1, opt.bubble.len do
        choice = tmp % #opt.bubble.map + 1
        bubble = bubble .. opt.bubble.map[choice]
        tmp = math.floor(tmp / #opt.bubble.map)
        if same then
            if _ ~= 1 then
                same = choice == last
            end
            if same then
                last = choice
            end
        end
    end
    opt.fun.draw(bubble)
    if same then
        opt.fun.prize(choice)
    end
end

function M.setup(user_opt)
    if user_opt then
        opt = vim.tbl_deep_extend("force", opt, user_opt)
    end
    math.randomseed(os.time())
    mx = math.floor(math.pow(#opt.bubble.map, opt.bubble.len)) + 1
    vim.api.nvim_create_autocmd(opt.bubble.event, {callback = function()
        bubble()
    end})
    bubble()
end

return M
