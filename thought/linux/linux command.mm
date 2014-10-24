<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1392704660822" ID="ID_1858627369" MODIFIED="1394523732522" TEXT="linux command">
<node CREATED="1405585090610" ID="ID_259405565" MODIFIED="1405585099101" POSITION="right" TEXT="&#x5e38;&#x7528;&#x76d1;&#x7763;&#x547d;&#x4ee4;">
<node CREATED="1405585100445" ID="ID_913205815" MODIFIED="1405585102758" TEXT="vmstat 1"/>
<node CREATED="1392704928091" ID="ID_1588354482" MODIFIED="1392704935477" TEXT="&#x6027;&#x80fd;&#x547d;&#x4ee4;">
<node CREATED="1392704956006" ID="ID_1902490939" MODIFIED="1392704966365" TEXT="&#x67e5;&#x770b;&#x5386;&#x53f2;&#x8d1f;&#x8f7d;&#xff1a;sar -u"/>
<node CREATED="1395305931748" ID="ID_1250615674" MODIFIED="1395305980742">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20195;&#30721;&#36861;&#36394;&#65306;strace -tt -f -F -o strace.log -p &#36827;&#31243;&#21495;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1392704818576" ID="ID_414335438" MODIFIED="1392704822434" POSITION="right" TEXT="&#x7f51;&#x7edc;">
<node CREATED="1392704690697" ID="ID_153959866" MODIFIED="1392704736341" TEXT="&#x67e5;&#x770b;TCP&#x72b6;&#x6001;&#x6570;&#x91cf;&#xff1a;netstat -n | awk &apos;/^tcp/ {++S[$NF]} END {for(a in S) print a, S[a]}&apos;">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1407901862534" ID="ID_1142925823" MODIFIED="1407901893491" TEXT="&#x67e5;&#x770b;&#x5f53;&#x524d;&#x94fe;&#x63a5;&#x7684;ip&#x72b6;&#x6001;&#xff1a;netstat -an | grep 80 | awk &apos;{print $5}&apos; | awk &apos;BEGIN {FS=&quot;:&quot;} NF==2 {print $1} NF==5 {print $4}&apos; | sort | uniq -c | sort -n"/>
<node CREATED="1396070082170" ID="ID_1682513229" MODIFIED="1396070087617" TEXT="&#x67e5;&#x770b;&#x6253;&#x5f00;&#x7684;&#x7aef;&#x53e3;">
<node CREATED="1396070095821" ID="ID_1370189679" MODIFIED="1407902307832" TEXT="TCP : netstat -natpl|sed -n &apos;/LISTEN/p&apos;"/>
<node CREATED="1396070115587" ID="ID_1849485193" MODIFIED="1396070123251" TEXT="UDP : netstat -naupl"/>
<node CREATED="1396070132381" ID="ID_1687174273" MODIFIED="1396070141951" TEXT="&#x5177;&#x4f53;&#x7aef;&#x53e3;&#xff1a;lsof -i:&#x7aef;&#x53e3;&#x53f7;"/>
</node>
<node CREATED="1408591496612" ID="ID_699281400" MODIFIED="1408591502708" TEXT="&#x67e5;&#x770b;&#x7f51;&#x5361;&#x6d41;&#x91cf;">
<node CREATED="1408591503629" ID="ID_1229137630" MODIFIED="1408720840682" TEXT="&#x76d1;&#x63a7;&#x9ad8;&#x6d41;&#x91cf;&#x8fdb;&#x7a0b;&#xff1a;nethogs -d 3 eth0"/>
<node CREATED="1408750855050" ID="ID_42858776" MODIFIED="1408750885211" TEXT="&#x6309;&#x94fe;&#x63a5;/&#x7aef;&#x53e3;&#x67e5;&#x770b;&#x6d41;&#x91cf;&#xff1a;iptraf"/>
</node>
</node>
<node CREATED="1392704833658" ID="ID_1448356927" MODIFIED="1392704837425" POSITION="right" TEXT="&#x64cd;&#x4f5c;&#x7cfb;&#x7edf;">
<node CREATED="1392704668781" ID="ID_1147795493" MODIFIED="1392705208468" TEXT="&#x67e5;&#x770b;&#x5185;&#x6838;&#x7248;&#x672c;&#xff1a;uname -r"/>
<node CREATED="1394523754610" ID="ID_277437817" MODIFIED="1394523764403" TEXT="&#x8fdc;&#x7a0b;&#x6302;&#x8f7d;&#x76ee;&#x5f55;&#xff1a;mount 192.168.0.4:/data/image/ljlj /img"/>
<node CREATED="1408699221246" ID="ID_863881104" MODIFIED="1408699228812" TEXT="&#x767b;&#x5f55;&#x5386;&#x53f2;&#xff1a;who /var/log/wtmp"/>
</node>
<node CREATED="1407902891117" ID="ID_1427495584" MODIFIED="1407902893928" POSITION="right" TEXT="&#x8fdb;&#x7a0b;">
<node CREATED="1407902897381" ID="ID_572297453" MODIFIED="1407902933408" TEXT="&#x627e;&#x5230;&#x8fd0;&#x884c;&#x5b9e;&#x4f8b;&#x8fc7;&#x591a;&#x7684;&#x8fdb;&#x7a0b;&#xff1a;ps -A -o comm|sort -k1|uniq -c |sort -k1 -rn"/>
</node>
<node CREATED="1392704844515" ID="ID_967911244" MODIFIED="1392704853977" POSITION="right" TEXT="&#x9632;&#x706b;&#x5899;">
<node CREATED="1392704757193" ID="ID_1242172845" MODIFIED="1392704765946" TEXT="&#x67e5;&#x770b;iptables&#x89c4;&#x5219;&#xff1a;iptables -L -n"/>
</node>
<node CREATED="1392704855035" ID="ID_814999247" MODIFIED="1392704856555" POSITION="right" TEXT="cpu">
<node CREATED="1392704774284" ID="ID_861571068" MODIFIED="1392704782306" TEXT="&#x67e5;&#x770b;cpu&#x4e2a;&#x6570;&#xff1a;grep &apos;physical id&apos; /proc/cpuinfo | sort -u | wc -l"/>
<node CREATED="1392704790246" ID="ID_798673412" MODIFIED="1392704800256" TEXT="&#x67e5;&#x770b;cpu&#x6838;&#x6570;&#xff1a;grep &apos;core id&apos; /proc/cpuinfo | sort -u | wc -l"/>
<node CREATED="1405584979583" ID="ID_183577793" MODIFIED="1405584998403" TEXT="&#x67e5;&#x770b;&#x5360;&#x7528;cpu&#x6700;&#x591a;&#x7684;&#x524d;&#x5341;&#x4e2a;&#x8fdb;&#x7a0b;&#xff1a;ps aux|head -1;ps aux|grep -v PID|sort -rn -k +3|head"/>
</node>
<node CREATED="1392704864873" ID="ID_995225349" MODIFIED="1392704865917" POSITION="right" TEXT="io">
<node CREATED="1392704937621" ID="ID_1086394476" MODIFIED="1392704952928" TEXT="&#x67e5;&#x770b;io&#x60c5;&#x51b5;&#xff1a;iostat -x 1&#xff08;&#x6bcf;&#x79d2;&#x6267;&#x884c;&#x4e00;&#x6b21;&#xff09;"/>
</node>
<node CREATED="1392704866991" ID="ID_148616324" MODIFIED="1392704869711" POSITION="right" TEXT="memory">
<node CREATED="1392816513827" ID="ID_1503454728" MODIFIED="1392816568456" TEXT="&#x67e5;&#x770b;page&#x7cfb;&#x7edf;&#x9ed8;&#x8ba4;&#x5927;&#x5c0f;&#xff1a;/usr/bin/time -v date,&#x5176;&#x4e2d;&#x7684;page size"/>
<node CREATED="1405585049192" ID="ID_1800633081" MODIFIED="1405585063347" TEXT="&#x67e5;&#x770b;&#x5360;&#x7528;&#x5185;&#x5b58;&#x6700;&#x591a;&#x7684;&#x5341;&#x4e2a;&#x8fdb;&#x7a0b;&#xff1a;ps aux|head -1;ps aux|grep -v PID|sort -rn -k +4|head"/>
</node>
<node CREATED="1396582157292" ID="ID_709650782" MODIFIED="1396582162066" POSITION="right" TEXT="&#x5185;&#x5bb9;&#x67e5;&#x627e;">
<node CREATED="1396582162974" ID="ID_658521627" MODIFIED="1396582241780" TEXT="find . -type f -name &apos;*file*&apos; |xargs rm -rf"/>
<node CREATED="1396582242678" ID="ID_167667473" MODIFIED="1396582258289" TEXT="grep -rin &apos;&#x5185;&#x5bb9;&apos; *"/>
</node>
</node>
</map>
