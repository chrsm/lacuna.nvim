lacuna.nvim
======

lacuna.nvim ~~is~~ will be a neovim plugin that provides an interface to [Dash][1] docs.
It's written in [Yuescript][2], not "pure" Lua.

It doesn't do anything useful right now. :-)


Install
=======

lacuna requires `lsqlite3`, `xmlua`, and `luafilesystem`, which also require packages to be
installed on your system. i'll detail this later. i am lazy.

- `lsqlite3`: `pacman -S sqlite3`
- `xmlua`: `pacman -S libxml2`

also, idk man, i use packer.

```moonscript
packer.startup (use) ->
  use_rocks "lsqlite3"
  use_rocks "xmlua"
  use_rocks "luafilesystem"

  use "chrsm/lacuna.nvim"
```


Contributing
============

- use [yue][2]
- write decent commit messages
- ???


[1]: https://www.kapeli.com/dash
[2]: https://github.com/pigpigyyy/Yuescript
