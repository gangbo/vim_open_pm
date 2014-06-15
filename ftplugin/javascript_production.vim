let $js_production_filename = substitute(expand('<sfile>'),'javascript_production\.vim$','JSProduction.pl','')
"autocmd BufWritePost *.js :!perl $js_production_filename %:p 1 1

"javascript 代码格式化,需要nodejs uglifyjs
:nmap <C-b><C-b> :%!/home/gangbo/www/node_modules/uglify-js/bin/uglifyjs -b -i 4<CR>
