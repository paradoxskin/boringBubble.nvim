local bubble = function()
    local bubbleMap = vim.g.bubble_map
    local bubbleLen = vim.g.bubble_len
    local bubbleShow = vim.g.bubble_show
    local mx = math.floor(math.pow(#bubbleMap, bubbleLen)) + 1
    local tmp = math.floor(math.random() * mx)
    local bubble = ""
    local cnt = 0
    for _ = 1, bubbleLen do
        local choice = tmp % #bubbleMap + 1
        bubble = bubble .. bubbleMap[choice]
        tmp = math.floor(tmp / #bubbleMap)
    end
    vim.g.bubble = bubble
    if bubbleShow == 1 then
        print(bubble)
    end
end
return {
    bubble = bubble
}
