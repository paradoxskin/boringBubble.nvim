# boringBubble.nvim

✨ A boring plugin for bored XD

>   echo BORING bubble string like **o 0 O** in vim coding.
>
>   Bubble will change when you coding.



💥 warning: This plugin may affect your programming efficiency

### Preview

TODO

### Installation

You can install it in your way like other vim plugin.

If you have no experience in installing plugins, I recommend you install them using the method provided by the official vim documentation, it's very easy to install a vim plugin.

*   linux

    `cd` to your `~/.config/nvim/pack/%ANY%/start` or `~/.config/nvim/%ANY%/opt` ( replace `%ANY%` as you wish ), then

    `git clone https://github.com/paradoxskin/boringBubble.nvim.git`

    you can also use git-submodule to manage it.

### Usage

*   `g:bubble_map`, a table of single Bubbles you want to appear
*   `g:bubble_len`, **length** of the Bubble String
*   `g:bubble_show`, do you want to echo it at bottom ? 0 to disable and 1 to enable, default 1

For example, add it in your `init.vim`

```vim
let g:bubble_map=["@", "a"]
let g:bubble_len=8
```

or `init.lua`

```lua
vim.g.bubble_map = {"@", "a"}
vim.g.bubble_len = 8
```

it will be like:

TODO

Of couse, you can use [nerd charaters](https://www.nerdfonts.com/)

TODO

*   You can get the Bubble by `g:bubble`. So it can also echoed in your status-line, if you use [lightline.vim](https://github.com/itchyny/lightline.vim)  or other
    my config:

    ```lua
    -- lightline
    vim.g.lightline = {
        colorscheme = 'paradoxskin',
        active = {
            left = {{'filename'}, {'percent'}, {'modified', 'readonly'}},
            right = {{'lineinfo'}, {'bubble'}, {'fileformat', 'fileencoding', 'filetype'}}
        },
        component = {
            bubble = '%{g:bubble}'
        },
    }

    -- boringBubble.nvim
    vim.g.bubble_map = {" ", " "}
    vim.g.bubble_len = 3
    vim.g.bubble_show = 0
    ```
    TODO

    For pure:

    ```vim
    set statusline+=%{g:boringBubble#Bubble}
    ```

✨ ENJOY:D
