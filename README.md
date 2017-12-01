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
<b> Run GAWK </b> <br/>
1. Open terminal.<br/>
2. Go to the folder with AWK file and trace file "out.tr".<br/>
3. run gawk -f Lan1.awk out.tr<br/>
4. It will give you output on the terminal itself. <br/>
 
<h2> Step 3: </h2> 
<b> Prepare .XG file </b> <br/>
1. Follow the instruction in step 1 and step 2 again for new error rate or data rate. <br/>
2. Change error rate on the line where set error-rate is given and set it 0.1, 0.2 , ... n. <br/>
3. Change data rate by changing the BW for duplex link between node 3 and 4. <br/>
4. make a seperate .xg file with this format "errorrate throughput" for every changed errorrate. <br/>

<h2> Step 4: </h2>
<b> Use XGRAPH to create graph </b> <br/>
1. Open terminal in directory where .xg file is saved.
2. run xgraph filename.xg and you'll get the desired output.

<hr/>
<h1> Thank You. I hope this helps you. </h1>
