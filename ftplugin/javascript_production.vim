let $js_production_filename = substitute(expand('<sfile>'),'javascript_production\.vim$','JSProduction.pl','')
autocmd BufWritePost *.js :!perl $js_production_filename %:p 1 1
