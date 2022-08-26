local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
    print("plugin nvim-autopairs not loaded")
    return
end

npairs.setup{}
