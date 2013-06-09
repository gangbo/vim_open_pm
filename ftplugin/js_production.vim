let $perl_filename= substitute(expand('<sfile>'),'js_production\.vim$','JSProduction.pl','')
autocmd BufWritePost *.js :!perl $perl_filename %:p 1 1
