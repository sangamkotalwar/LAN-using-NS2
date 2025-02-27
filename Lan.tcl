set ns [new Simulator]

set tf [open out.tr w]
$ns trace-all $tf

set nf [open out.nam w]
$ns namtrace-all $nf

#$tf set debug_ 0
#$ns color 0 blue
set n0 [$ns node]
#$n0 color "red"
set n1 [$ns node]
#$n1 color "red"
set n2 [$ns node]
#$n2 color "red"
set n3 [$ns node]
#$n3 color "red"
set n4 [$ns node]
#$n4 color "magenta"
set n5 [$ns node]
#$n5 color "magenta"
set n6 [$ns node]
#$n6 color "magenta"
set n7 [$ns node]
#$n7 color "magenta"

$ns make-lan "$n0 $n1 $n2 $n3" 100Mb 300ms LL Queue/DropTail Mac/802_3
$ns make-lan "$n4 $n5 $n6 $n7" 100Mb 300ms LL Queue/DropTail Mac/802_3
$ns duplex-link $n3 $n4 150Mb 300ms DropTail
#Data rate has been changed in this order for calcuating output : 25Mb, 50Mb, 75Mb, 100Mb.
$ns duplex-link-op $n3 $n4 color "green"
# set error rate.
set err [new ErrorModel]
$ns lossmodel $err $n3 $n4
$err set rate_ 0.1
# error rate should be changed for each output like 0.1,0.3,0.5.... */
set udp [new Agent/UDP]
$ns attach-agent $n1 $udp
set cbr [new Application/Traffic/CBR]
$cbr attach-agent $udp
$cbr set fid_ 0
$cbr set packetSize_ 1000
$cbr set interval_ 0.0001
set null [new Agent/Null]
$ns attach-agent $n7 $null
$ns connect $udp $null

proc finish { } {
global ns nf tf
$ns flush-trace
close $nf
close $tf
exec nam out.nam &
exit 0
}
$ns at 0.1 "$cbr start"
$ns at 3.0 "finish"
$ns run
