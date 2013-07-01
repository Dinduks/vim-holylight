# Holy Light

## What is it?
Using a dark background for Vim (`background=dark`) is eyes-friendly. But in
luminous environments, it makes text quite hard to read, and it requires setting
the `background` variable to `light`.

Holy Light is a Vim plugin for MacBook users that sets that setting automatically
each time a file or buffer is opened.

## Installation
Holy Light is [Pathogen-friendly](https://github.com/tpope/vim-pathogen).  
You simply need to `git clone` the this repository in your *bundle* directory, and
reload your Vim configuration (`source $MYVIMRC`).

## How does it work?
The plugin calls the *bin/holylight-checker* program in order to get the current
ambient light value.  
Depending on the returned value it sets `background`'s value to `light` or `dark`.

## Customization
If the setting that sets the background to light or dark doesn't suit you, you can
easily change it.

Simply run the *bin/realtime-checker* program, then set the `g:holylight_threshold`
variable to the value that suits you.

## The name
It is named after Stratovarius' [Holy Light](https://www.youtube.com/watch?v=KHVP2anxbH8)
song.
