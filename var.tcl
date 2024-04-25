#Var and Arithmetic
set a 3
set b 5
set c [expr {$a + $b}]
puts "$a + $b = $c"

#uses of "\"
puts "This is a \$ special character"

puts "This is a\
$ special character and line continuation"

puts "This is backslash \is ignored"

puts "This is backslash\
	continued on next line"

#Creat list & index of the list
set a { 1 2 3 }
puts [lindex $a 1]
puts [llength $a]

#Append component to a list
lappend a 4 5 6
puts "$a"

#Creat an array or hash table
set days(Mon) Monday
puts "$days(Mon)"

array set days { Sun Sunday Mon Monday Tue Tuesday\ 
                 Wed Wednesday Thu Thursday Fri Friday Sat Saturday }
puts "$days(Thu)"

set day_abbreviation Mon
puts $days($day_abbreviation)

foreach i [array names days] {
	puts "The abbreviation $i corresponds to the day name $days($i)"
}


set x "ONE"
set y 1
set z TWO

# This is probably the easiest and cleanest form of the command
# to remember:
switch $x {
    "$z" {
        set y1 [expr {$y+1}]
        puts "MATCH \$z. $y + $z is $y1"
    }
    ONE {
        set y1 [expr {$y+1}]
        puts "MATCH ONE. $y + one is $y1"
    }
    TWO {
        set y1 [expr {$y+2}]
        puts "MATCH TWO. $y + two is $y1"
    }
    THREE {
        set y1 [expr {$y+3}]
        puts "MATCH THREE. $y + three is $y1"
    }
    default {
        puts "$x is NOT A MATCH"
    }
}
switch $x "$z" {
    set y1 [expr {$y+1}]
    puts "MATCH \$z. $y + $z is $y1"
} ONE {
    set y1 [expr {$y+1}]
    puts "MATCH ONE. $y + one is $y1"
} TWO {
    set y1 [expr {$y+2}]
    puts "MATCH TWO. $y + two is $y1"
} THREE {
    set y1 [expr {$y+3}]
    puts "MATCH THREE. $y + three is $y1"
} default {
    puts "$x does not match any of these choices"
}