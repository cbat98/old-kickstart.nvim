local powershell_options = {
  shell = vim.fn.executable "pwsh" == 1 and "powershell" or "pwsh",
  shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
  shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
  shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
  shellquote = "",
  shellxquote = "",
}

for option, value in pairs(powershell_options) do
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
