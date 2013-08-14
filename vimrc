if has('win32') || has('win64')
    set rtp+=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

"call pathogen#infect()
"call pathogen#helptags()

source ~/.bundles.vim

