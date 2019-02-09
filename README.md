# shipstar does holman does dotfiles

## How I set up a new Mac:

1. Install `1Password` via the Mac App Store
2. Download homebrew
3. `brew install git`
4. `git clone git@github.com:shipstar/dotfiles.git ~/.dotfiles`
  - May require generating a new SSH key and adding to GitHub if you forgot to back it up
5. `./script/bootstrap`
6. Restart the computer for things like scroll direction to take effect

I always have a few unpredictable issues to resolve after this as libraries
are out of date, URLs have changed, etc, but this is a good starting point.

## script/bootstrap

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## what's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser
above and see what components may mesh up with you.
[Fork it](https://github.com/holman/dotfiles/fork), remove what you don't
use, and build on what you do use.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory.

  To further nest symlinks into subdirectories under `$HOME`, use `+` signs to signify additional directory delimiters. So for example, the file `topic/config+topic.symlink` would get symlinked to `$HOME/.config/topic` when you run `script/bootstrap`.

## thanks

Thanks to Zach Holman for his dotfiles, and Ryan Bates for inspiring Holman!
(Maybe this repo should be "shipstar does holman does bates does dotfiles"?)
