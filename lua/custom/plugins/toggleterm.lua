local powershell_available = vim.fn.executable "powershell" == 1

local shell_options = {
}

if powershell_available then
    shell_options = {
        shell = "powershell",
        shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
        shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
        shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
        shellquote = "",
        shellxquote = ""
    }
else
    shell_options = {
        shell = "bash"
    }
end

for option, value in pairs(shell_options) do
  vim.opt[option] = value
end

vim.keymap.set("n", "<leader>tt", vim.cmd.ToggleTerm, { desc = '[T]oggle [T]erminal' })
vim.keymap.set("t", "<esc><esc>", "<C-\\><C-n>", { desc = "Enter normal mode" })

return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {
  },
}
