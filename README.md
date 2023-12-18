# My neovim configuration

## Whats neovim?

Neovim is a extensible CLI based code editor, the child of Vim built with lua programming language. Vi is the grandfather of neovim.

## How does it work?

Neovim is blazing fast and works directly on terminal even in cloud based terminal to manage and fix server which makes it special if user have good command in it and doesn't work well with mouse and gui responses natively and not made for using with mouse i.e. pointing and clicking to operate. Simply, everything you can imagine can be done by commands/custom keyboard shortcuts that works in differnt modes like(normal,insert,visual,etc..).

## How to start using?

Just download/clone my entire repository to get my configuration. After installing neovim in your computer, create `nvim` directory in your `.config` folder which is inside `/username/home/` directory. now open `nvim` directory and copy all the files from this repository to the `nvim` folder. type `nvim` to launch neovim in terminal, press `esc` and type `:Tutor` to understand the basics.

### OR

you can also directly clone this repo to `/home/user/.config/` and rename `my neovim config` to `nvim` and everything does it well. You may need to manually install different compilers and packages like node, npm, gcc, clang-format, etc.. to run everything properly

### Extras

If you need a debugger, Please install nvim-dap from their official repository and configure for language you prefer using the guide from nvim-dap or lazyvim official page.

### How to link user config with root config to use same config:

ln -s /home/username/.config/nvim /root/.config/nvim

### Custom keymaps:

custom keymaps/shortcuts are located in `lua/keymaps.lua` for compiling and running various files, more compilers and running commands can be added as shortcut with the same methods.

## Thank you!
