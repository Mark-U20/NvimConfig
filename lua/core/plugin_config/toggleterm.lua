local toggleterm = require("toggleterm")
local powershell_cmd = "powershell"   -- Command for PowerShell
local default_shell_cmd = vim.o.shell -- Default shell command

-- Check if PowerShell is available
local powershell_available = vim.fn.executable(powershell_cmd) == 1

toggleterm.setup(
  {
    shell = powershell_available and powershell_cmd or default_shell_cmd,
  }
)
