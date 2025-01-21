local utils = require("utils")

return {
    "tmux-plugins/vim-tmux",
    enabled = function()
        if utils.executable("tmux") then
            return true
        end
        return false
    end,
    ft = { "tmux" }
}