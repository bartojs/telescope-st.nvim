local conf = require'telescope.config'.values
local finders = require'telescope.finders'
local make_entry = require'telescope.make_entry'
local pickers = require'telescope.pickers'

return require'telescope'.register_extension{
  exports = {
    list = function(opts)
      opts = opts or {}
      opts.entry_maker = opts.entry_maker or make_entry.gen_from_file(opts)
      pickers.new(opts, {
        prompt_title = 'Find Files',
        finder = finders.new_oneshot_job(
          {vim.o.shell, '-c', 'st'},
          opts
        ),
        previewer = conf.file_previewer(opts),
        sorter = conf.file_sorter(opts),
      }):find()
  end
  },
}
