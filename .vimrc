execute pathogen#infect()
"Syntax Highlighting and Validation
filetype on "enables file type detection
syntax on
filetype plugin on 
"set background=dark

if has('gui_running')
   set background=light
else
    set background=dark
endif

"Solarized Scheme
colorscheme solarized

filetype plugin indent on


"Code Folding
set foldmethod=indent
set foldlevel=99

"Integration with Git
"%{fugitive#statusline()}

"Tab Completion
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

"Virtualenv
" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
     project_base_dir = os.environ['VIRTUAL_ENV']
     sys.path.insert(0, project_base_dir)
     activate_this = os.path.join(project_base_dir,'bin/activate_this.py')
     execfile(activate_this, dict(__file__=activate_this))
EOF
 
