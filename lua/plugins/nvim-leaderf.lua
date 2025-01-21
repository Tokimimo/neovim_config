local plugin_dir = vim.fn.stdpath("data") .. "/lazy"

return {
    "Yggdroot/LeaderF",
    cmd = "Leaderf",
    build = function()
        local leaderf_path = plugin_dir .. "/LeaderF"
        vim.opt.runtimepath:append(leaderf_path)
        vim.cmd("runtime! plugin/leaderf.vim")

        if not vim.g.is_win then
            vim.cmd("LeaderfInstallCExtension")
        end
    end
}
