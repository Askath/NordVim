local wk = require("which-key")
wk.register(
    {
        s = { "search" },
        g = { "git" },
        f = { "file" },
        t = { "Trouble" },
        c = { "code" },
        K = "Hover definition"

    },
    {
        prefix = "<leader>"
    }
)
