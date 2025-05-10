return {
  "mg979/vim-visual-multi",
  config = function()
    -- make Enter do the same thing (in both Normal and Extend-mode)
    vim.keymap.set({ 'n', 'x' }, '<CR>',
      '<Plug>(VM-Add-Cursor-At-Pos)',
      { silent = true }
    )
  end,
}
