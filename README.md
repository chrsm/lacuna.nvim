lacuna.nvim
======

lacuna.nvim ~~is~~ will be a neovim plugin that provides an interface to [Dash][1] docs.
It's written in [Yuescript][2], not "pure" Lua.

It doesn't do anything useful right now. :-)


Current Status
=======

One of the problems with this plugin at the moment is that docs from dash/zeal
are in HTML format, not plaintext (obviously). Getting nicely-formatted content
from that is quite annoying (go figure).

There are a few options that I'm exploring:

1. `glow`: basically, pretend all content is actually markdown and let something
  else do the rendering work. Not great, as it requires an external tool and
  executes it each time.

2. write a small html-cleaner lib: likely never going to be 100% capable of
  handling every situation.

With option 2, it'd be possible to clean docs ahead-of-time and provide an
alternate download host, too. At that point, though, is it even useful?
Should we just use manpages forever?

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
  use_rocks "lua-cjson"

  use {
    "chrsm/lacuna.nvim"
    config: ->
      require("lacuna").setup!
  }
```


Contributing
============

- use [yue][2]
- write decent commit messages
- ???


[1]: https://www.kapeli.com/dash
[2]: https://github.com/pigpigyyy/Yuescript
