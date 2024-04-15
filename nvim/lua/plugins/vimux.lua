return {
    "preservim/vimux",
    -- :TmuxNavigatePrevious<CR>
    vim.keymap.set("n", "<leader>rp", ":VimuxRunCommand('clear; go run .')<CR>", {})
}
