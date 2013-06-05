let $perl_filename= substitute(expand('<sfile>'),'vim$','pl','')

if !exists('*Gotofile')
function! Gotofile()
    let line = getline('.')
    let pos = col('.')
    let open_pl = './openPM.pl'

    let r = system('perl '.$perl_filename.' '. pos . ' ' . shellescape(line).' '.getcwd())
    if r != ''
        exec 'tabnew ' . r
    else
        echo 'No match found!'
    endif

endfunction
endif

:map <C-L> :call Gotofile()<CR>
