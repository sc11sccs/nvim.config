local telescope_config = require('telescope.config')
local vimgrep_arguments = { unpack(telescope_config.values.vimgrep_arguments) }

table.insert(vimgrep_arguments, "--hidden")
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!.git/*")
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!node_modules/*")

require('telescope').setup({
  defaults = {
    vimgrep_arguments = vimgrep_arguments,
  },
  pickers = {
    find_files = {
      find_command = {
        "rg",
        "--files",
        "--hidden",
        "--glob",
        "!.git/*",
        "--glob",
        "!node_modules/*",
      },
    },
  },
})

