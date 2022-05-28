return {
    -- cmd = {
    --     "pyright-language",
    --     "--stdio"
    -- },
    filetype = {
        "python"
    },
    settings = {
        python = {
        analysis = {
            autoSearchPaths = true,
            diagnosticMode = "workspace",
            useLibraryCodeForTypes = true
            }
        }
    }
}
