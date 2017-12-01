# LAN-using-NS2
Simulate an Ethernet LAN using "n‟ nodes, change error rate and data rate and compare throughput.
<br/>
# Pre-requisites to run code
1. Linux with text editor, NS2 installed to run tcl script.<br/>
2. NAM should be installed to visualise the trace file.<br/>
3. gawk should be installed to run AWK file. <br/>
4. XGRAPH should be installed to convert given data in .xg file to .ps file. <br/>

# Problem Statement
Simulate an Ethernet LAN using "n" nodes, change error rate and data rate and compare throughput.

# How to start?
<h2> Step 1: </h2>
<b> RUN TCL SCRIPT </b><br/>

1. Open terminal.<br/>
2. Go to the folder with TCL script and run ns Lan.tcl <br/>
3. It will open NAM simulator. Click on PLAY button and let the trace file get input (Automatically starts when you press the play button).
<br/>

<h2> Step 2: </h2>
<b> Run gawk </b>
1. Open terminal.<br/>
2. Go to the folder with AWK file and trace file "out.tr".<br/>
3. run gawk -f Lan1.awk out.tr<br/>
4. It will give you output on the terminal itself. <br/>
 
