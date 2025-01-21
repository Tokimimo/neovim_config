# Plugin usages

Custom keymaps or overriding of default keymaps which are related directly to a plugin are found in the config file of that specific plugin instead of the mappings script.
config files for plugins are found under `lua/config` and the general custom keymaps are found under `lua/mappings.lua`.

## AsyncRun

AsyncRun allows to perform operations asynchronously while continuing to work in the current neovim buffer.
An example would be push the current state to the remote repository like this:

`:AsyncRun git push origin master`

## GX

This plugin allows to easily open any hyperlinks in documents in the default browser.
It works by either using the command with a provided link or by placing the cursor on an link.

Variant 1:
`:Browse https://google.com`

Variant 2:

Place your cursor ( vim cursor ) on the following link and then just enter `:Browse`
https://www.google.com

## Hop

This is a very powerful plugin to navigate inside of documents as fast as possible.
However it can get very complex and it's highly recommended that you define your own keybindings for hopper.

See the wiki of the plugin maintainer for infomration on it:
https://github.com/smoka7/hop.nvim/wiki

## Neoformat

Formatter with the most standard formatting configured by the LSP for the language of the file.
If nothing is selected with visual mode or visual_line mode the whole buffer will be formatted.

`:Neoformat`

## Commentary

Commentary eases the writing of comments by automatically detecting the file language.

By quickly pressing `gcc` the whole line of the current cursor will be wrapped in a comment.
If multiple lines are selected in visual_line mode all selected lines will be wrapped in a independet comments by pressing `gc`.

the command `gc` can be combined with a motion so the possibilities are vast.

## FzfLua

This is simple.
It's FZF. If you know about it you either love it or hate it, there rarely is any inbetween.

Check out the maintainer git page for how to use it:
https://github.com/ibhagwan/fzf-lua

## HLSLENS

No more need to exit the search to navigate through the occurrences.
Enter search mode by entering `/` in normal mode and enter what you want to search in the current buffer.
No need to hit enter just keep the search active and use `<C-g>` and `<C-t>` to move to the next or previous occurrence.

## LeaderF

Super fast fuzzy searcher for current project.
In order to be able to use it it needs to be manually started once for the current neovim session with `Leaderf`
Afterwards it can be used to fuzzy search for files, filetypes, functions and more by using `LeaderfFiles` etc.
For detailed information see: https://github.com/Yggdroot/LeaderF

## Mundo

Have a IDE like local file history with the latest few changes kept in history to revert between.

To show the local history use `MundoShow`.
Select the version you want to revert to with the arrow keys and select it with ENTER.
Exit Mundo with a press of `q`.

## UFO

It just beautifies folding in neovim so no special keymaps or commands are requiried.

Just place your cursor on the folding line in normal mode and enter `za` to trigger folding.

Otherwise here is an overview of all default folding keymaps:

zo => Opens the fold under the cursor
zO => Opens all folds under the cursor recursively

zc => Closes the fold under the cursor
zC => Closes all folds under the cursor recursively

za => Toggle the fold under the cursor
zA => Toggle all folds under the cursor recursively

zR => Opens all folds in the buffer
zM => Closes all folds in the buffer

## Nvim tree

File explorer in Neovim. Basically like FzfLua but much simpler without regex and fuzzy searching.
Acts more like the project explorer in VS Code.

Open it with `NvimtreeOpen`

In order to figure out the navigation and commands enter `g?` while in the Filetree.
Exit the help window with `q` and repeat to close the Filetree.

## Yanky

This plugin aims to improve the yank and paste behavior of neovim.
By default it does nothing as custom keymappings need to be configured for it.

See https://github.com/gbprod/yanky.nvim for details

Our keymap configuration specific to yanky are in the configuration file for yanky under
`lua/config/yanky.lua`.

# Custom keymaps

Custom keymappings are defined in the file lua/mappings.lua.
The custom leader defined in this configuration is comma (,) so any keymapping made with <leader> mean comma.

## Keymappings in insert mode

+ Turn the current word the cursor is in to UPPERCASE => <C-u> => Control + u
+ Turn the current word the cursor is in to lowercase => <C-l> => Control + l
+ Quickly move to the start of the current line => <C-a> => Control + a
+ Quickly move to the end of the current line => <C-e> => Control + e

## Keymappings in normal mode

+ Paste text above current line => <leader>P => , + shift + p
+ Paste text below current line => <leader>p => , + p
+ Fast save and quit => <leader>w => , + w
+ Save, if modified, and quit => <leader>q => , + q
+ insert blank line below without moving cursor => <space>o => space + o
+ Insert blank line above without moving cursor => <space>O => space + shift + o
+ Go to start of line => H => shift + h
+ Go to end of line => L => shift + l
+ Quickly edit and then reload nvim config file => <leader>ev => , + e + v
+ Reload nvim config file => <leader>sv => , + s + v
+ Remove trailing whitespace characters => <leader><space> => , + space
+ Split current file to new window vertically => <leader>wr => , + w + r
+ Split current file to new window horizontally => <leader>wb => , + w + b
+ Navigate to left window => <left> => left arrow key
+ Navigate to right window => <right> => right arrow key
+ Navigate to upper window => <up> => up arrow key
+ Naviate to lower window => <down> => down arrow key
+ Switch to previous buffer => <leader>bp => , + b + p
+ Switch to next buffer => <leader>bn => , + b + n
+ Make Cursor blink to find it => <leader>cb => , + c + b

## Keymappings in visual mode

+ Move selection up => <leader>k => , + k
+ Move selection down => <leader>j => , + j
