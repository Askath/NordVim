local wk = require("which-key")
wk.register(
    {
        s = { "search" },
        g = { "git" },
        f = { "file" },
        c = { "code" },
        K = "Hover definition"

    },
    {
        prefix = "<leader>"
    }
)
