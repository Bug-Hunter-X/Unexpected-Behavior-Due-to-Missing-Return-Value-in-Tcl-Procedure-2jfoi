proc badproc {a b} { puts stderr "$a $b"; return } 
set x [badproc 1 2]; puts "$x"