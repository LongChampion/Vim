"LongChampion's Configuration for Vim"

"IMPORTANT: Set compatibility to Vim only"
set nocompatible
set ttimeoutlen=60



"=== Indention Options ==="
set autoindent
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4



"=== Search Options ==="
set hlsearch
set incsearch
set smartcase



"=== Text Rendering Options ==="
syntax on
set encoding=utf-8



"=== User Interface Options ==="
set mouse=a
set background=dark
set cursorline
set cursorlineopt=number,screenline
set number
set relativenumber
set noshowmode
set splitbelow



"=== Miscellaneous Options ==="
set autochdir
set autoread
set autowrite
set clipboard=unnamedplus
set nobackup
set noswapfile
set nowrap



"=== Plugin Options ==="
"vim-gitgutter"
let g:gitgutter_map_keys = 0
let g:gitgutter_async = 0
let g:gitgutter_preview_win_floating = 1

"Theme: gruvbox"
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
highlight CursorLineNr cterm=bold ctermbg=240 ctermfg=14

"vim-rainbow"
let g:rainbow_active = 1

"ale"
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 1
let g:ale_linters_explicit = 1
let g:ale_linters = {'c': ['gcc', 'clang'], 'cpp': ['gcc', 'clang']}
let g:ale_cpp_gcc_options = '-std=c++17 -Wall -Wextra -Wpedantic'
let g:ale_cpp_clang_options = '-std=c++17 -Weverything'
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_echo_msg_format = '[%linter%] [%severity%] %s'
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:ale_sign_info = ''

"vim-clang-format"
let g:clang_format#auto_format = 1
let g:clang_format#auto_format_on_insert_leave = 1
let g:clang_format#command = '/usr/bin/clang-format'
let g:clang_format#style_options = { "BasedOnStyle": "LLVM", "Language": "Cpp", "Standard": "Latest", "AccessModifierOffset": -2, "AlignConsecutiveAssignments": "true", "AlignConsecutiveMacros": "true", "AlignEscapedNewlines": "Left", "AlignTrailingComments": "true", "AllowShortBlocksOnASingleLine": "Always", "AllowShortCaseLabelsOnASingleLine": "true", "AllowShortFunctionsOnASingleLine": "All", "AllowShortIfStatementsOnASingleLine": "true", "AllowShortLoopsOnASingleLine": "true", "AlwaysBreakAfterReturnType": "None", "BreakBeforeBraces": "Allman", "BreakStringLiterals": "false", "ColumnLimit": 0, "ContinuationIndentWidth": 4, "Cpp11BracedListStyle": "true", "DeriveLineEnding": "false", "DerivePointerAlignment": "false", "FixNamespaceComments": "true", "IndentCaseLabels": "true", "IndentGotoLabels": "true", "IndentPPDirectives": "AfterHash", "IndentWidth": 4, "IndentWrappedFunctionNames": "true", "KeepEmptyLinesAtTheStartOfBlocks": "false", "MaxEmptyLinesToKeep": 6, "NamespaceIndentation": "All", "PointerAlignment": "Right", "SortIncludes": "false", "SortUsingDeclarations": "false", "SpaceAfterCStyleCast": "true", "SpaceAfterLogicalNot": "true", "SpaceAfterTemplateKeyword": "true", "SpaceBeforeAssignmentOperators": "true", "SpaceBeforeCpp11BracedList": "true", "SpaceBeforeCtorInitializerColon": "false", "SpaceBeforeInheritanceColon": "false", "SpaceBeforeParens": "ControlStatements", "SpaceBeforeRangeBasedForLoopColon": "true", "SpaceBeforeSquareBrackets": "false", "SpaceInEmptyBlock": "false", "SpaceInEmptyParentheses": "false", "SpacesBeforeTrailingComments": 4, "SpacesInAngles": "false", "SpacesInCStyleCastParentheses": "false", "SpacesInConditionalStatement": "false", "SpacesInContainerLiterals": "false", "SpacesInParentheses": "false", "SpacesInSquareBrackets": "false", "TabWidth": 4, "UseCRLF": "false", "UseTab": "Never" }

"YouCompleteMe"
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_max_num_candidates = 60
let g:ycm_max_num_identifier_candidates = 12
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_echo_current_diagnostic = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_disable_for_files_larger_than_kb = 1024
let g:ycm_clangd_binary_path = '/usr/bin/clangd'



"=== Key Mapping ==="
"Toggle wrapping"
execute "set <A-z>=\ez"
map <silent> <A-z> :set wrap!<CR>

"Toggle highlight search"
map <silent> <F3> :set hlsearch!<CR>

"Toogle tab-to-space"
execute "set <A-t>=\et"
map <silent> <A-t> :set expandtab!<CR>

"Trim space at end of line"
execute "set <A-x>=\ex"
map <silent> <A-x> :%s/\s\+$//e<CR>

"NERDTree"
map <silent> <C-E> :NERDTreeToggle<CR>

"ale"
map <silent> <F5> :ALEPrevious<CR>
map <silent> <F6> :ALENext<CR>

"vim-gitgutter"
map <silent> <F7> :GitGutterPrevHunk<CR>
map <silent> <F8> :GitGutterNextHunk<CR>
map <silent> <F10> :GitGutterStageHunk<CR>
map <silent> <F11> :GitGutterUndoHunk<CR>
map <silent> <F12> :GitGutterPreviewHunk<CR>

"fzf-vim"
map <silent> <C-O> :Files<CR>
map <silent> <C-W> :Buffers<CR>

"=== AUTORUN COMMAND ==="
autocmd InsertLeave * GitGutter
autocmd TextChanged * GitGutter
