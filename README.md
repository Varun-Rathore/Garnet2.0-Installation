This is a simple shell script to Download & install Garnet along with all the software requirments<br/>

## How to install

<ul>
<li>Download or Clone this repo</li>
<li>Run the script 'RunMe' with command<ul><li>$ source RunMe.sh</li></ul></li>
<li>Sit back and relax</li>
</ul>
To test run the below command<br/>
<pre>./build/NULL/gem5.debug configs/example/garnet_synth_traffic.py  \
--num-cpus=16 \
--num-dirs=16 \
--network=garnet2.0 \
--topology=Mesh_XY \
--mesh-rows=4  \
--sim-cycles=1000 \
--synthetic=uniform_random \
--injectionrate=0.01
 </pre>
