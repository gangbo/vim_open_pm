"使用php_beautifier美化代码，需要安装php_beaufifier
"安装方法 pear install PHP_Beautifier-0.1.15  --alldeps
":nmap <C-b><C-b> :%!php ~/pear/bin/php_beautifier -l "Pear('newline_class'=>false,'newline_function'=>false) ArrayNested()" <CR>
:nmap <C-b><C-b> :%!php ~/pear/bin/php_beautifier -l "Pear() ArrayNested()" <CR>
