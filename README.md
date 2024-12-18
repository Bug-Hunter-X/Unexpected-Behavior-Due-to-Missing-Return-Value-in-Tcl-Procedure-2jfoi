# Unexpected Behavior Due to Missing Return Value in Tcl Procedure
This repository demonstrates a common, yet subtle, error in Tcl programming involving procedures that print to stderr and lack an explicit return value. The `bug.tcl` file contains the erroneous code, while `bugSolution.tcl` provides the corrected version. 

## Bug Description
The issue stems from the `badproc` procedure, which prints output to standard error using `puts stderr`. However, it does not explicitly return any value.  When a Tcl procedure doesn't have a return statement, it implicitly returns an empty string. Thus, when `badproc` is called, the variable `x` is assigned an empty string instead of the expected value. This might cause problems in any subsequent use of the variable `x`.

## Solution
The `bugSolution.tcl` file corrects this by adding an explicit `return` statement to the `badproc` procedure to explicitly return a value. 

## How to Reproduce
1. Clone this repository.
2. Run `bug.tcl`: `tclsh bug.tcl` Observe the output, showing variable x is empty. 
3. Run `bugSolution.tcl`: `tclsh bugSolution.tcl` Notice that the output indicates the values of both `a` and `b` and variable `x` contains the correct value. 