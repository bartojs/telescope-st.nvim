# telescope-st.nvim
telescope extension for svn/git status


this is just an example extension I copied from telescope-z.nvim and tweaked to see how they work.

its better to just add this in ~/.config/nvim/plugin/telescope.vim :

```vim
noremap <leader>st :lua require('telescope.builtin').find_files({find_command={'st'}})<cr>
```


####


originally I had ~/.config/nvim/plugin/telescope.vim :
```vim
luafile ~/.config/nvim/lua/telescope/_extensions/st.lua
lua <<EOF
    require('telescope').load_extension('st')
EOF
```

and could run with

```vim
:Telescope st list
```
