
q
Command: %s
53*	vivadotcl2@
,synth_design -top Main -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
�The '%s' target of the following IPs are stale, please generate the output products using the generate_target or synth_ip command before running synth_design.
%s160*	vivadotcl2
	Synthesis2default:default2�
�H:/An/NN/NN.srcs/sources_1/ip/floating_point_0/floating_point_0.xci
H:/An/NN/NN.srcs/sources_1/ip/floating_point_1/floating_point_1.xci
H:/An/NN/NN.srcs/sources_1/ip/floating_point_2/floating_point_2.xci
2default:defaultZ4-393h px� 
�
IP '%s' is locked:
%s
1260*coregen2$
floating_point_02default:default2�
�* Current project part 'xc7a35tcpg236-1' and the part 'xc7a100tcsg324-1' used to customize the IP 'floating_point_0' do not match.
Please select 'Report IP Status' from the 'Tools/Report' menu or run Tcl command 'report_ip_status' for more information.2default:defaultZ19-2162h px�
�
IP '%s' is locked:
%s
1260*coregen2$
floating_point_12default:default2�
�* Current project part 'xc7a35tcpg236-1' and the part 'xc7a100tcsg324-1' used to customize the IP 'floating_point_1' do not match.
Please select 'Report IP Status' from the 'Tools/Report' menu or run Tcl command 'report_ip_status' for more information.2default:defaultZ19-2162h px�
�
IP '%s' is locked:
%s
1260*coregen2$
floating_point_22default:default2�
�* Current project part 'xc7a35tcpg236-1' and the part 'xc7a100tcsg324-1' used to customize the IP 'floating_point_2' do not match.
Please select 'Report IP Status' from the 'Tools/Report' menu or run Tcl command 'report_ip_status' for more information.2default:defaultZ19-2162h px�
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
�
%s*synth2�
wStarting RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 399.285 ; gain = 99.379
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
Main2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
212default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
BAUD_GEN2default:default2A
+H:/An/NN/NN.srcs/sources_1/new/BAUD_GEN.vhd2default:default2
92default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
BAUD_GEN2default:default2
12default:default2
12default:default2A
+H:/An/NN/NN.srcs/sources_1/new/BAUD_GEN.vhd2default:default2
92default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
RX_FSM2default:default2?
)H:/An/NN/NN.srcs/sources_1/new/RX_FSM.vhd2default:default2
182default:default8@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
counter2default:default2?
)H:/An/NN/NN.srcs/sources_1/new/RX_FSM.vhd2default:default2
1002default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
RX_FSM2default:default2
22default:default2
12default:default2?
)H:/An/NN/NN.srcs/sources_1/new/RX_FSM.vhd2default:default2
182default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
IMAGE2default:default2>
(H:/An/NN/NN.srcs/sources_1/new/IMAGE.vhd2default:default2
172default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
IMAGE2default:default2
32default:default2
12default:default2>
(H:/An/NN/NN.srcs/sources_1/new/IMAGE.vhd2default:default2
172default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
RAM2default:default2<
&H:/An/NN/NN.srcs/sources_1/new/RAM.vhd2default:default2
212default:default8@Z8-638h px� 
Z
%s
*synth2B
.	Parameter L bound to: 25088 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter C bound to: 32 - type: integer 
2default:defaulth p
x
� 
t
%s
*synth2\
H	Parameter FileName bound to: Weights_binary_32x784.txt - type: string 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
RAM2default:default2
42default:default2
12default:default2<
&H:/An/NN/NN.srcs/sources_1/new/RAM.vhd2default:default2
212default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2'
RAM__parameterized02default:default2<
&H:/An/NN/NN.srcs/sources_1/new/RAM.vhd2default:default2
212default:default8@Z8-638h px� 
W
%s
*synth2?
+	Parameter L bound to: 32 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter C bound to: 32 - type: integer 
2default:defaulth p
x
� 
o
%s
*synth2W
C	Parameter FileName bound to: Biases_binary_32.txt - type: string 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2'
RAM__parameterized02default:default2
42default:default2
12default:default2<
&H:/An/NN/NN.srcs/sources_1/new/RAM.vhd2default:default2
212default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
FF2default:default2;
%H:/An/NN/NN.srcs/sources_1/new/FF.vhd2default:default2
132default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
FF2default:default2
52default:default2
12default:default2;
%H:/An/NN/NN.srcs/sources_1/new/FF.vhd2default:default2
132default:default8@Z8-256h px� 
�
synthesizing module '%s'%s4497*oasys2$
floating_point_02default:default2
 2default:default2q
[H:/An/NN/NN.runs/synth_2/.Xil/Vivado-30952-DESKTOP-78H6746/realtime/floating_point_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
floating_point_02default:default2
 2default:default2
62default:default2
12default:default2q
[H:/An/NN/NN.runs/synth_2/.Xil/Vivado-30952-DESKTOP-78H6746/realtime/floating_point_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'638*oasys2
UC2default:default2;
%H:/An/NN/NN.srcs/sources_1/new/UC.vhd2default:default2
312default:default8@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
OP2default:default2;
%H:/An/NN/NN.srcs/sources_1/new/UC.vhd2default:default2
1272default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
c12default:default2;
%H:/An/NN/NN.srcs/sources_1/new/UC.vhd2default:default2
1272default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
c22default:default2;
%H:/An/NN/NN.srcs/sources_1/new/UC.vhd2default:default2
1272default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
UC2default:default2
72default:default2
12default:default2;
%H:/An/NN/NN.srcs/sources_1/new/UC.vhd2default:default2
312default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2'
RAM__parameterized12default:default2<
&H:/An/NN/NN.srcs/sources_1/new/RAM.vhd2default:default2
212default:default8@Z8-638h px� 
W
%s
*synth2?
+	Parameter L bound to: 32 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter C bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter FileName bound to: -.txt - type: string 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2'
RAM__parameterized12default:default2
72default:default2
12default:default2<
&H:/An/NN/NN.srcs/sources_1/new/RAM.vhd2default:default2
212default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2'
RAM__parameterized22default:default2<
&H:/An/NN/NN.srcs/sources_1/new/RAM.vhd2default:default2
212default:default8@Z8-638h px� 
X
%s
*synth2@
,	Parameter L bound to: 320 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter C bound to: 32 - type: integer 
2default:defaulth p
x
� 
s
%s
*synth2[
G	Parameter FileName bound to: Weights_binary_10x32.txt - type: string 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2'
RAM__parameterized22default:default2
72default:default2
12default:default2<
&H:/An/NN/NN.srcs/sources_1/new/RAM.vhd2default:default2
212default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2'
RAM__parameterized32default:default2<
&H:/An/NN/NN.srcs/sources_1/new/RAM.vhd2default:default2
212default:default8@Z8-638h px� 
W
%s
*synth2?
+	Parameter L bound to: 10 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter C bound to: 32 - type: integer 
2default:defaulth p
x
� 
o
%s
*synth2W
C	Parameter FileName bound to: Biases_binary_10.txt - type: string 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2'
RAM__parameterized32default:default2
72default:default2
12default:default2<
&H:/An/NN/NN.srcs/sources_1/new/RAM.vhd2default:default2
212default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
RST_RAM2default:default2@
*H:/An/NN/NN.srcs/sources_1/new/RST_RAM.vhd2default:default2
222default:default8@Z8-638h px� 
W
%s
*synth2?
+	Parameter L bound to: 10 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter C bound to: 32 - type: integer 
2default:defaulth p
x
� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

Output_max2default:default2
RST_RAM2default:default2@
*H:/An/NN/NN.srcs/sources_1/new/RST_RAM.vhd2default:default2
172default:default8@Z8-3848h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
RST_RAM2default:default2
82default:default2
12default:default2@
*H:/An/NN/NN.srcs/sources_1/new/RST_RAM.vhd2default:default2
222default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
D2default:default2:
$H:/An/NN/NN.srcs/sources_1/new/D.vhd2default:default2
142default:default8@Z8-638h px� 
W
%s
*synth2?
+	Parameter S bound to: 32 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
D2default:default2
92default:default2
12default:default2:
$H:/An/NN/NN.srcs/sources_1/new/D.vhd2default:default2
142default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2%
D__parameterized02default:default2:
$H:/An/NN/NN.srcs/sources_1/new/D.vhd2default:default2
142default:default8@Z8-638h px� 
W
%s
*synth2?
+	Parameter S bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2%
D__parameterized02default:default2
92default:default2
12default:default2:
$H:/An/NN/NN.srcs/sources_1/new/D.vhd2default:default2
142default:default8@Z8-256h px� 
�
synthesizing module '%s'%s4497*oasys2$
floating_point_22default:default2
 2default:default2q
[H:/An/NN/NN.runs/synth_2/.Xil/Vivado-30952-DESKTOP-78H6746/realtime/floating_point_2_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
floating_point_22default:default2
 2default:default2
102default:default2
12default:default2q
[H:/An/NN/NN.runs/synth_2/.Xil/Vivado-30952-DESKTOP-78H6746/realtime/floating_point_2_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2$
floating_point_12default:default2
 2default:default2q
[H:/An/NN/NN.runs/synth_2/.Xil/Vivado-30952-DESKTOP-78H6746/realtime/floating_point_1_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
floating_point_12default:default2
 2default:default2
112default:default2
12default:default2q
[H:/An/NN/NN.runs/synth_2/.Xil/Vivado-30952-DESKTOP-78H6746/realtime/floating_point_1_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'638*oasys2
UC_22default:default2=
'H:/An/NN/NN.srcs/sources_1/new/UC_2.vhd2default:default2
372default:default8@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
OP2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/UC_2.vhd2default:default2
1432default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
c12default:default2=
'H:/An/NN/NN.srcs/sources_1/new/UC_2.vhd2default:default2
1432default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
c22default:default2=
'H:/An/NN/NN.srcs/sources_1/new/UC_2.vhd2default:default2
1432default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
UC_22default:default2
122default:default2
12default:default2=
'H:/An/NN/NN.srcs/sources_1/new/UC_2.vhd2default:default2
372default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
	displ7seg2default:default2B
,H:/An/NN/NN.srcs/sources_1/new/displ7seg.vhd2default:default2
362default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	displ7seg2default:default2
132default:default2
12default:default2B
,H:/An/NN/NN.srcs/sources_1/new/displ7seg.vhd2default:default2
362default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Main2default:default2
142default:default2
12default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
212default:default8@Z8-256h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2"
Output_max[15]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2"
Output_max[14]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2"
Output_max[13]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2"
Output_max[12]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2"
Output_max[11]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2"
Output_max[10]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[9]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[8]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[5]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[4]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[3]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized32default:default2
Adr[15]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized32default:default2
Adr[14]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized32default:default2
Adr[13]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized32default:default2
Adr[12]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized32default:default2
Adr[11]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized32default:default2
Adr[10]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized32default:default2
Adr[9]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized32default:default2
Adr[8]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized32default:default2
Adr[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized32default:default2
Adr[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized32default:default2
Adr[5]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized32default:default2
Adr[4]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized22default:default2
Adr[15]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized22default:default2
Adr[14]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized22default:default2
Adr[13]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized22default:default2
Adr[12]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized22default:default2
Adr[11]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized22default:default2
Adr[10]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized22default:default2
Adr[9]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized12default:default2
Adr[15]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized12default:default2
Adr[14]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized12default:default2
Adr[13]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized12default:default2
Adr[12]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized12default:default2
Adr[11]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized12default:default2
Adr[10]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized12default:default2
Adr[9]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized12default:default2
Adr[8]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized12default:default2
Adr[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized12default:default2
Adr[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized12default:default2
Adr[5]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized02default:default2
Adr[15]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized02default:default2
Adr[14]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized02default:default2
Adr[13]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized02default:default2
Adr[12]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized02default:default2
Adr[11]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized02default:default2
Adr[10]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized02default:default2
Adr[9]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized02default:default2
Adr[8]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized02default:default2
Adr[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized02default:default2
Adr[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2'
RAM__parameterized02default:default2
Adr[5]2default:defaultZ8-3331h px� 
y
!design %s has unconnected port %s3331*oasys2
RAM2default:default2
Adr[15]2default:defaultZ8-3331h px� 
w
!design %s has unconnected port %s3331*oasys2
IMAGE2default:default2
Rst2default:defaultZ8-3331h px� 
x
!design %s has unconnected port %s3331*oasys2
RX_FSM2default:default2
Rst2default:defaultZ8-3331h px� 
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:42 ; elapsed = 00:00:45 . Memory (MB): peak = 555.195 ; gain = 255.289
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
SSD2default:default2
Data[31]2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
3852default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
SSD2default:default2
Data[30]2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
3852default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
SSD2default:default2
Data[29]2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
3852default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
SSD2default:default2
Data[28]2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
3852default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
SSD2default:default2
Data[27]2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
3852default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
SSD2default:default2
Data[26]2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
3852default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
SSD2default:default2
Data[25]2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
3852default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
SSD2default:default2
Data[24]2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
3852default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
SSD2default:default2
Data[23]2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
3852default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
SSD2default:default2
Data[22]2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
3852default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
SSD2default:default2
Data[21]2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
3852default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
SSD2default:default2
Data[20]2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
3852default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
SSD2default:default2
Data[19]2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
3852default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
SSD2default:default2
Data[18]2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
3852default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
SSD2default:default2
Data[17]2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
3852default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
SSD2default:default2
Data[16]2default:default2=
'H:/An/NN/NN.srcs/sources_1/new/Main.vhd2default:default2
3852default:default8@Z8-3295h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:43 ; elapsed = 00:00:45 . Memory (MB): peak = 555.195 ; gain = 255.289
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:43 ; elapsed = 00:00:45 . Memory (MB): peak = 555.195 ; gain = 255.289
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2u
_h:/An/NN/NN.srcs/sources_1/ip/floating_point_0/floating_point_0/floating_point_0_in_context.xdc2default:default2
FP_ADD	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2u
_h:/An/NN/NN.srcs/sources_1/ip/floating_point_0/floating_point_0/floating_point_0_in_context.xdc2default:default2
FP_ADD	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2u
_h:/An/NN/NN.srcs/sources_1/ip/floating_point_0/floating_point_0/floating_point_0_in_context.xdc2default:default2
FP_ADD_2	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2u
_h:/An/NN/NN.srcs/sources_1/ip/floating_point_0/floating_point_0/floating_point_0_in_context.xdc2default:default2
FP_ADD_2	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2u
_h:/An/NN/NN.srcs/sources_1/ip/floating_point_1/floating_point_1/floating_point_1_in_context.xdc2default:default2
MUL	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2u
_h:/An/NN/NN.srcs/sources_1/ip/floating_point_1/floating_point_1/floating_point_1_in_context.xdc2default:default2
MUL	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2u
_h:/An/NN/NN.srcs/sources_1/ip/floating_point_2/floating_point_2/floating_point_2_in_context.xdc2default:default2
CMP	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2u
_h:/An/NN/NN.srcs/sources_1/ip/floating_point_2/floating_point_2/floating_point_2_in_context.xdc2default:default2
CMP	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2U
?H:/An/NN/NN.srcs/constrs_1/imports/Desktop/Nexys4DDR_Master.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2U
?H:/An/NN/NN.srcs/constrs_1/imports/Desktop/Nexys4DDR_Master.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2S
?H:/An/NN/NN.srcs/constrs_1/imports/Desktop/Nexys4DDR_Master.xdc2default:default2*
.Xil/Main_propImpl.xdc2default:defaultZ1-236h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
824.9182default:default2
0.0002default:defaultZ17-268h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
824.9182default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
824.9182default:default2
0.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0582default:default2
824.9182default:default2
0.0002default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:01:01 ; elapsed = 00:01:10 . Memory (MB): peak = 824.918 ; gain = 525.012
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:01:01 ; elapsed = 00:01:10 . Memory (MB): peak = 824.918 ; gain = 525.012
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:01:01 ; elapsed = 00:01:10 . Memory (MB): peak = 824.918 ; gain = 525.012
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
Baud_En2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
counter2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
Baud_Cnt2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
Baud_Cnt2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
Baud_Cnt2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
State2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
State2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
State2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
State2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
counter2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
Bit_Cnt2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
Bit_Cnt2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
RX_DATA2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
State2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
State2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
State2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
c12default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
c22default:default2
322default:default2
252default:defaultZ8-5545h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[0]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[1]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[2]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[3]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[4]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[5]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[6]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[7]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[8]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[9]2default:defaultZ8-5546h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
State2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
State2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
c12default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
c22default:default2
322default:default2
252default:defaultZ8-5545h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:01:05 ; elapsed = 00:01:14 . Memory (MB): peak = 824.918 ; gain = 525.012
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     20 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     17 Bit       Adders := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 4     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              784 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 23    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input    784 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input     32 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     20 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input     16 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 13    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  17 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input      1 Bit        Muxes := 12    
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
9
%s
*synth2!
Module Main 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
Module BAUD_GEN 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module RX_FSM 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 3     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
:
%s
*synth2"
Module IMAGE 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     17 Bit       Adders := 7     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              784 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input    784 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
7
%s
*synth2
Module FF 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
7
%s
*synth2
Module UC 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input     32 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module RST_RAM 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 10    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 10    
2default:defaulth p
x
� 
6
%s
*synth2

Module D 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
F
%s
*synth2.
Module D__parameterized0 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
Module UC_2 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input     16 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  17 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input      1 Bit        Muxes := 12    
2default:defaulth p
x
� 
>
%s
*synth2&
Module displ7seg 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     20 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     20 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
Baud_Cnt2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
State2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
counter2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
c22default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
State2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
State2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
State2default:default2
322default:default2
252default:defaultZ8-5545h px� 
q
%s
*synth2Y
EDSP Report: Generating DSP Adr_W0, operation Mode is: C+A*(B:0x310).
2default:defaulth p
x
� 
e
%s
*synth2M
9DSP Report: operator Adr_W0 is absorbed into DSP Adr_W0.
2default:defaulth p
x
� 
e
%s
*synth2M
9DSP Report: operator Adr_W1 is absorbed into DSP Adr_W0.
2default:defaulth p
x
� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[0]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[1]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[2]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[3]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[4]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[5]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[6]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[7]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[8]2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
data_reg[9]2default:defaultZ8-5546h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
State2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
State2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
An02default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
GEN/counter2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
GEN/Baud_En2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2"
Output_max[15]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2"
Output_max[14]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2"
Output_max[13]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2"
Output_max[12]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2"
Output_max[11]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2"
Output_max[10]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[9]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[8]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[5]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[4]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[3]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
RST_RAM2default:default2!
Output_max[0]2default:defaultZ8-3331h px� 
w
!design %s has unconnected port %s3331*oasys2
IMAGE2default:default2
Rst2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
IMAGE2default:default2"
Adr_Output[15]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
IMAGE2default:default2"
Adr_Output[14]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
IMAGE2default:default2"
Adr_Output[13]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
IMAGE2default:default2"
Adr_Output[12]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
IMAGE2default:default2"
Adr_Output[11]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
IMAGE2default:default2"
Adr_Output[10]2default:defaultZ8-3331h px� 
x
!design %s has unconnected port %s3331*oasys2
RX_FSM2default:default2
Rst2default:defaultZ8-3331h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:02:35 ; elapsed = 00:02:46 . Memory (MB): peak = 915.258 ; gain = 615.352
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
k
%s*synth2S
?
Distributed RAM: Preliminary Mapping  Report (see note below)
2default:defaulth px� 
�
%s*synth2�
m+------------+------------------------+-----------+----------------------+---------------------------------+
2default:defaulth px� 
�
%s*synth2�
n|Module Name | RTL Object             | Inference | Size (Depth x Width) | Primitives                      | 
2default:defaulth px� 
�
%s*synth2�
m+------------+------------------------+-----------+----------------------+---------------------------------+
2default:defaulth px� 
�
%s*synth2�
n|Main        | RAM_WEIGHTS_1/data_reg | Implied   | 32 K x 32            | RAM256X1S x 3136                | 
2default:defaulth px� 
�
%s*synth2�
n|Main        | RAM_BIAS_1/data_reg    | Implied   | 32 x 32              | RAM32X1S x 32                   | 
2default:defaulth px� 
�
%s*synth2�
n|Main        | RAM_L_2/data_reg       | Implied   | 32 x 32              | RAM32X1S x 32                   | 
2default:defaulth px� 
�
%s*synth2�
n|Main        | RAM_WEIGHTS_2/data_reg | Implied   | 512 x 32             | RAM64X1S x 32  RAM256X1S x 32   | 
2default:defaulth px� 
�
%s*synth2�
n|Main        | RAM_BIAS_2/data_reg    | Implied   | 16 x 32              | RAM16X1S x 32                   | 
2default:defaulth px� 
�
%s*synth2�
n+------------+------------------------+-----------+----------------------+---------------------------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px� 
_
%s*synth2G
3
DSP: Preliminary Mapping  Report (see note below)
2default:defaulth px� 
�
%s*synth2�
~+------------+---------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
|Module Name | DSP Mapping   | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px� 
�
%s*synth2�
~+------------+---------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
|UC          | C+A*(B:0x310) | 16     | 11     | 16     | -      | 16     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
+------------+---------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:03:05 ; elapsed = 00:03:16 . Memory (MB): peak = 915.258 ; gain = 615.352
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:03:10 ; elapsed = 00:03:22 . Memory (MB): peak = 915.258 ; gain = 615.352
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(
Distributed RAM: Final Mapping  Report
2default:defaulth p
x
� 
�
%s
*synth2�
m+------------+------------------------+-----------+----------------------+---------------------------------+
2default:defaulth p
x
� 
�
%s
*synth2�
n|Module Name | RTL Object             | Inference | Size (Depth x Width) | Primitives                      | 
2default:defaulth p
x
� 
�
%s
*synth2�
m+------------+------------------------+-----------+----------------------+---------------------------------+
2default:defaulth p
x
� 
�
%s
*synth2�
n|Main        | RAM_WEIGHTS_1/data_reg | Implied   | 32 K x 32            | RAM256X1S x 3136                | 
2default:defaulth p
x
� 
�
%s
*synth2�
n|Main        | RAM_BIAS_1/data_reg    | Implied   | 32 x 32              | RAM32X1S x 32                   | 
2default:defaulth p
x
� 
�
%s
*synth2�
n|Main        | RAM_L_2/data_reg       | Implied   | 32 x 32              | RAM32X1S x 32                   | 
2default:defaulth p
x
� 
�
%s
*synth2�
n|Main        | RAM_WEIGHTS_2/data_reg | Implied   | 512 x 32             | RAM64X1S x 32  RAM256X1S x 32   | 
2default:defaulth p
x
� 
�
%s
*synth2�
n|Main        | RAM_BIAS_2/data_reg    | Implied   | 16 x 32              | RAM16X1S x 32                   | 
2default:defaulth p
x
� 
�
%s
*synth2�
n+------------+------------------------+-----------+----------------------+---------------------------------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Technology Mapping : Time (s): cpu = 00:03:28 ; elapsed = 00:03:41 . Memory (MB): peak = 1374.164 ; gain = 1074.258
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
wFinished IO Insertion : Time (s): cpu = 00:03:33 ; elapsed = 00:03:46 . Memory (MB): peak = 1374.164 ; gain = 1074.258
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:03:33 ; elapsed = 00:03:47 . Memory (MB): peak = 1374.164 ; gain = 1074.258
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:03:34 ; elapsed = 00:03:48 . Memory (MB): peak = 1374.164 ; gain = 1074.258
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:03:35 ; elapsed = 00:03:48 . Memory (MB): peak = 1374.164 ; gain = 1074.258
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:03:37 ; elapsed = 00:03:50 . Memory (MB): peak = 1374.164 ; gain = 1074.258
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:03:37 ; elapsed = 00:03:50 . Memory (MB): peak = 1374.164 ; gain = 1074.258
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
R
%s
*synth2:
&+------+-----------------+----------+
2default:defaulth p
x
� 
R
%s
*synth2:
&|      |BlackBox name    |Instances |
2default:defaulth p
x
� 
R
%s
*synth2:
&+------+-----------------+----------+
2default:defaulth p
x
� 
R
%s
*synth2:
&|1     |floating_point_0 |         2|
2default:defaulth p
x
� 
R
%s
*synth2:
&|2     |floating_point_2 |         1|
2default:defaulth p
x
� 
R
%s
*synth2:
&|3     |floating_point_1 |         1|
2default:defaulth p
x
� 
R
%s
*synth2:
&+------+-----------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
Q
%s*synth29
%+------+--------------------+------+
2default:defaulth px� 
Q
%s*synth29
%|      |Cell                |Count |
2default:defaulth px� 
Q
%s*synth29
%+------+--------------------+------+
2default:defaulth px� 
Q
%s*synth29
%|1     |floating_point_0    |     1|
2default:defaulth px� 
Q
%s*synth29
%|2     |floating_point_0__2 |     1|
2default:defaulth px� 
Q
%s*synth29
%|3     |floating_point_1    |     1|
2default:defaulth px� 
Q
%s*synth29
%|4     |floating_point_2    |     1|
2default:defaulth px� 
Q
%s*synth29
%|5     |BUFG                |     1|
2default:defaulth px� 
Q
%s*synth29
%|6     |CARRY4              |   124|
2default:defaulth px� 
Q
%s*synth29
%|7     |DSP48E1             |     1|
2default:defaulth px� 
Q
%s*synth29
%|8     |LUT1                |   183|
2default:defaulth px� 
Q
%s*synth29
%|9     |LUT2                |   211|
2default:defaulth px� 
Q
%s*synth29
%|10    |LUT3                |   298|
2default:defaulth px� 
Q
%s*synth29
%|11    |LUT4                |   503|
2default:defaulth px� 
Q
%s*synth29
%|12    |LUT5                |  2349|
2default:defaulth px� 
Q
%s*synth29
%|13    |LUT6                |  3844|
2default:defaulth px� 
Q
%s*synth29
%|14    |MUXF7               |   526|
2default:defaulth px� 
Q
%s*synth29
%|15    |MUXF8               |   193|
2default:defaulth px� 
Q
%s*synth29
%|16    |RAM16X1S            |    32|
2default:defaulth px� 
Q
%s*synth29
%|17    |RAM256X1S           |  3168|
2default:defaulth px� 
Q
%s*synth29
%|18    |RAM32X1S            |    64|
2default:defaulth px� 
Q
%s*synth29
%|19    |RAM64X1S            |    32|
2default:defaulth px� 
Q
%s*synth29
%|20    |FDRE                |  1570|
2default:defaulth px� 
Q
%s*synth29
%|21    |FDSE                |    32|
2default:defaulth px� 
Q
%s*synth29
%|22    |IBUF                |    20|
2default:defaulth px� 
Q
%s*synth29
%|23    |OBUF                |    17|
2default:defaulth px� 
Q
%s*synth29
%+------+--------------------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
b
%s
*synth2J
6+------+----------------+--------------------+------+
2default:defaulth p
x
� 
b
%s
*synth2J
6|      |Instance        |Module              |Cells |
2default:defaulth p
x
� 
b
%s
*synth2J
6+------+----------------+--------------------+------+
2default:defaulth p
x
� 
b
%s
*synth2J
6|1     |top             |                    | 13284|
2default:defaulth p
x
� 
b
%s
*synth2J
6|2     |  RAM_WEIGHTS_1 |RAM                 |  4512|
2default:defaulth p
x
� 
b
%s
*synth2J
6|3     |  ADR_STORE     |D__parameterized0   |    27|
2default:defaulth p
x
� 
b
%s
*synth2J
6|4     |  FF            |FF                  |    64|
2default:defaulth p
x
� 
b
%s
*synth2J
6|5     |  FF_ADD_RES    |FF_0                |    64|
2default:defaulth p
x
� 
b
%s
*synth2J
6|6     |  FF_MUL_RES    |FF_1                |    32|
2default:defaulth p
x
� 
b
%s
*synth2J
6|7     |  GEN           |BAUD_GEN            |    51|
2default:defaulth p
x
� 
b
%s
*synth2J
6|8     |  IMAGE         |IMAGE               |  2059|
2default:defaulth p
x
� 
b
%s
*synth2J
6|9     |  MAX_NUM       |D                   |    32|
2default:defaulth p
x
� 
b
%s
*synth2J
6|10    |  RAM_BIAS_1    |RAM__parameterized0 |    32|
2default:defaulth p
x
� 
b
%s
*synth2J
6|11    |  RAM_BIAS_2    |RAM__parameterized3 |    32|
2default:defaulth p
x
� 
b
%s
*synth2J
6|12    |  RAM_L_2       |RAM__parameterized1 |    32|
2default:defaulth p
x
� 
b
%s
*synth2J
6|13    |  RAM_L_3       |RST_RAM             |   416|
2default:defaulth p
x
� 
b
%s
*synth2J
6|14    |  RAM_WEIGHTS_2 |RAM__parameterized2 |    66|
2default:defaulth p
x
� 
b
%s
*synth2J
6|15    |  RX_FSM        |RX_FSM              |  4876|
2default:defaulth p
x
� 
b
%s
*synth2J
6|16    |  SSD           |displ7seg           |    57|
2default:defaulth p
x
� 
b
%s
*synth2J
6|17    |  UC            |UC                  |   468|
2default:defaulth p
x
� 
b
%s
*synth2J
6|18    |  UC_2          |UC_2                |   310|
2default:defaulth p
x
� 
b
%s
*synth2J
6+------+----------------+--------------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:03:37 ; elapsed = 00:03:50 . Memory (MB): peak = 1374.164 ; gain = 1074.258
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 24 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:02:42 ; elapsed = 00:03:33 . Memory (MB): peak = 1374.164 ; gain = 804.535
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:03:37 ; elapsed = 00:03:51 . Memory (MB): peak = 1374.164 ; gain = 1074.258
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
41402default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
52default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0602default:default2
1374.1642default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 3296 instances were transformed.
  RAM16X1S => RAM32X1S (RAMS32): 32 instances
  RAM256X1S => RAM256X1S (MUXF7, MUXF7, MUXF8, RAMS64E, RAMS64E, RAMS64E, RAMS64E): 3168 instances
  RAM32X1S => RAM32X1S (RAMS32): 64 instances
  RAM64X1S => RAM64X1S (RAMS64E): 32 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1072default:default2
1092default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:03:532default:default2
00:04:092default:default2
1374.1642default:default2
1085.7302default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0562default:default2
1374.1642default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default25
!H:/An/NN/NN.runs/synth_2/Main.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2r
^Executing : report_utilization -file Main_utilization_synth.rpt -pb Main_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Jan 11 14:54:09 20202default:defaultZ17-206h px� 


End Record