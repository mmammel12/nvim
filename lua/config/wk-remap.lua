local wk = require("which-key")

-- Debugger
wk.register({
	d = {
		name = "debug",
		t = "toggle dap ui",
		b = "toggle breakpoint",
		c = "continue",
		s = "stop",
		o = "step over",
		i = "step into",
		u = "step out",
		n = "next",
		r = "open dap ui",
	},
}, { prefix = "<leader>" })
