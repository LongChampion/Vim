"LongChampion's Configuration for Vim"

"IMPORTANT: Set compatibility to Vim only"
set nocompatible
set ttimeoutlen=60



"=== Indention Options ==="
set autoindent
set expandtab
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4



"=== Search Options ==="
set hlsearch
set incsearch
set smartcase



"=== Text Rendering Options ==="
set encoding=utf-8



"=== User Interface Options ==="
set mouse=a
set background=dark
set cursorline
set number
set relativenumber



"=== Miscellaneous Options ==="
syntax on
set autochdir
set autoread
set autowrite
set clipboard=unnamedplus
set nobackup
set noswapfile
set nowrap



"=== Plugin Options ==="
"Theme: gruvbox"
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

"ale"
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 1
let g:ale_linters_explicit = 1
let g:ale_linters = {'cpp': ['gcc', 'clang']}
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



"=== Autorun Commands ==="
"Auto load NERDTree at startup"
autocmd VimEnter * NERDTree



"=== Key Mapping ==="
map <F3> :set hlsearch!<CR>

"Trim space at end of line"
map <C-S-t> :%s/\s\+$//e

"NERDTree"
map <C-e> :NERDTreeToggle<CR>

"ale"
map <F5> :ALEPrevious<CR>
map <F6> :ALENext<CR>
