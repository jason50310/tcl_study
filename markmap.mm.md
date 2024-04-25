---
title: TCL study
markmap:
  colorFreezeLevel: 2
---
## Var
- set
`set a 3`
- puts
`puts "$a"`
## Math
- [expr { }]
`[expr {$a + $b}]`
## Data Stucture
- String
    - string match
    - string compare
    - string length
    - string range
    - string index
    - modfying 
    `tolower, toupper, trim, format`
- List
    - set
    `set a { 1 2 3 }`
    - append
    `lappend a 4 5 6`
    - lindex
    `puts [lindex $a 1]`
    - llength
    `puts [llength $a]`
    - split
    - concat
    - lsearch
    - lsort
    - lrange
- Array
    - set
    `set days(Mon) Monday`
    - array set
    `array set days { Sun Sunday Mon Monday Tue Tuesday }`
    - array names
    `foreach i [array names days] {
        puts "The abbreviation $i corresponds to the day name $days($i)"
    }`
## Controls
- Loop
    - while
    `while {$x < 5} {
    puts "x is $x"
    set x [expr {$x + 1}]
    }`
    - for
    `for {set i 0} {$i < 10} {incr i} {
        puts "I inside first loop: $i"
    }`
    - foreach
- Procedures
    - proc { }
    p`roc sum {arg1 arg2} {
        set x [expr {$arg1 + $arg2}];
        return $x
    }`
    - global
    - upvar
## File
- open
`set infile [open "myfile.txt" r]`