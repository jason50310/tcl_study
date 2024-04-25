---
title: TCL study
markmap:
  colorFreezeLevel: 2
---
## Var
- set
- puts
## math
- [expr { }]
## List
- set
`set a { 1 2 3 }`
- append
`lappend a 4 5 6`
- lindex
`puts [lindex $a 1]`
- length
`puts [llength $a]`
## Array
- array names
## Loop
- while
`while {$x < 5} {
puts "x is $x"
set x [expr {$x + 1}]
}`
- for
- foreach
## Procedures
- proc { }
