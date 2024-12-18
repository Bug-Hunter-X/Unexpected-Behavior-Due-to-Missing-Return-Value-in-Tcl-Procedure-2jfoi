proc goodproc {a b} { puts stderr "$a $b"; return "$a $b"} 
set x [goodproc 1 2]; puts "$x"