local opts = {
  auto_enable = true,
  auto_resize_height = false,
  border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
  func_map = {
    drop = "O",
    filterr = "f",
    filter = "F",
    nexthist = ">",
    openc = "o",
    prevhist = "<",
    ptoggleauto = "p",
    ptogglemode = "P",
    sclear = "c",
    split = "s",
    stoggledown = "m",
    stoggleup = "M",
    stogglevm = "m",
    tab = "t",
    vsplit = "v",
  },
  magic_window = true,
  preview = {
    auto_preview = false,
    delay_syntax = 50,
    show_title = true,
    wrap = false,
  },
}

require("bqf").setup(opts)
