# Windows
I don't use tabs

## Move between

+ `<c-h>`, `<c-j>`, `<c-k>`, `<c-l>` move to window left, down, up, right

## Open and close

+ `<c-w>s` split current window horizontally `<c-w>v` split current window vertically
+ `:sp[lit] filename`	split the current window horizontally, loading filename in the new window
+ `:vsp[lit] filename`	split the current window vertically, loading filename in the new window
+ `<c-w>q` or `:q[uit]` close current window
+ `:on[ly]` close other windows

## Changing focus between windows

+ `ctrl-w w`	cycle between the open windows
+ `ctrl-w h` or `ctrl-h`	focus the window to the left
+ `ctrl-w j` or `ctrl-j`	focus the window to the down
+ `ctrl-w k` or `ctrl-k`	focus the window to the up
+ `ctrl-w l` or `ctrl-l`	focus the window to the right

## Resizing windows
You can resize windows by clicking on the boundary between windows, and dragging it to your prefered size. The following key commands also help:

+ `ctrl-w +`	increase height of current window by 1 line
+ `ctrl-w -`	decrease height of current window by 1 line
+ `ctrl-w _`	maximise height of current window
+ `ctrl-w |`	maximise width of current window

## Moving windows

+ `ctrl-w r`	rotate all windows
+ `ctrl-w x`	exchange current window with its neighbour
+ `ctrl-w H`	move current window to far left
+ `ctrl-w J`	move current window to bottom
+ `ctrl-w K`	move current window to top
+ `ctrl-w L`	move current window to far right

# File navigation (netrw)

## Exploring

+ `:e.`	or `:edit .`	at current working directory
+ `:sp.`	or `:split .`	in split at current working directory
+ `:vs.`	or `:vsplit .`	in vertical split at current working directory
+ `:E`	or `:Explore`	at directory of current file
+ `:Se`	or `:Sexplore`	in split at directory of current file
+ `:Vex`	or `:Vexplore`	in vertical split at directory of current file

## Manipulating the filesystem

+ `%`	create a new file
+ `d`	create a new directory
+ `R`	rename the file/directory under the cursor
+ `D`	Delete the file/directory under the cursor

### Added by vim-vinegar

+ Press `-` in any buffer to hop up to the directory listing and seek to the file you just came from. Keep bouncing to go up, up, up. Having rapid directory access available changes everything.
+ All that annoying crap at the top is turned off, leaving you with nothing but a list of files. This is surprisingly disorienting, but ultimately very liberating. Press `I` to toggle until you adapt.
+ The oddly C-biased default sort order is replaced with a sensible application of 'suffixes'.
+ File hiding: files are not listed that match with one of the patterns in 'wildignore'.
+ If you put `let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'` in your vimrc, vinegar will initialize with dot files hidden. Press `gh` to toggle dot file hiding.
+ Press `.` on a file to pre-populate it at the end of a `:` command line. This is great, for example, to quickly initiate a `:grep` of the file or directory under the cursor. There's also `!`, which starts the line off with a bang. Type `!chmod +x` and get `:!chmod +x path/to/file`.
+ Press `y`. to yank an absolute path for the file under the cursor.
+ Press `~` to go home.

# Cursor Movement

## Arrow keys 
+ `h`, `j`, `k`, `l` -> left, down, up, right

## Search

+ `f` forward `F` backward char search on line
+ `/` forward `?` backward multiline regex search

# Coding help

## Ctrl-p
<https://ctrlpvim.github.io/ctrlp.vim/>

+ `<c-p>` ctrl-p to fuzzy search filenames
+ `<c-b>` calls ctrl-p's `:CtrlPBuffer` to search open buffers

## Git-Gutter
<https://github.com/airblade/vim-gitgutter>

+ `\hp` preview hunk changes
+ `\hu` undo hunk changes
+ `]c` jump to next hunk (change)
+ `[c` jump to previous hunk (change)

## vim.surround
`:h surround` <https://github.com/tpope/vim-surround>

+ `cs` change surround example `cs'"` 'hello' -> "hello"
+ `ds` delete surround example `ds"` "hello" -> hello
+ `ys` you surround example `ys }` hello -> { hello }

## vim.commentary
`:h commentary` <https://github.com/tpope/vim-commentary>

+ `gc{motion}` Comment or uncomment lines that {motion} moves over
+ `gcc` Comment or uncomment [count] lines
+ `{Visual}gc` Comment or uncomment the highlighted lines

## Projectionist
Plug 'tpope/vim-projectionist'

## Json
Plug 'tpope/vim-jdaddy'

## File contents search
Plug 'mhinz/vim-grepper'

## JSdoc
Plug 'heavenshell/vim-jsdoc'
Plug 'pangloss/vim-javascript'

# Keep Window Buffer Delete
Plug 'rgarver/Kwbd.vim'
@todo: give better mapping

Plug 'scrooloose/nerdtree'

# Helpers
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'digitaltoad/vim-pug'
Plug 'Raimondi/delimitMate'
 - setup *'delimitMate_insert_eol_marker'*
 
# checkout
https://github.com/tpope/vim-vinegar
https://github.com/tpope/vim-obsession
