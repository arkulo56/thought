<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1392728445152" ID="ID_1083359062" MODIFIED="1392736641643" TEXT="performance">
<node CREATED="1392732574329" ID="ID_441574332" MODIFIED="1395206668146" POSITION="right" TEXT="cpu">
<node CREATED="1392732585125" ID="ID_848115796" MODIFIED="1404974611135" TEXT="&#x6307;&#x6807;">
<node CREATED="1392732603833" ID="ID_159865199" MODIFIED="1392732621395" TEXT="&#x4e0a;&#x4e0b;&#x6587;&#x4ea4;&#x6362; context switchs"/>
<node CREATED="1392732590922" ID="ID_1261406990" MODIFIED="1392732652951" TEXT="cpu&#x5229;&#x7528;&#x7387; cpu utilization"/>
<node CREATED="1392732699678" ID="ID_732980156" MODIFIED="1392732726928" TEXT="cpu run queue"/>
</node>
<node CREATED="1392732782637" FOLDED="true" ID="ID_21187725" MODIFIED="1404974615478" TEXT="monitor tools">
<node CREATED="1392732794409" ID="ID_602985310" MODIFIED="1395206675565" TEXT="vmstat 1">
<node CREATED="1392735358352" ID="ID_1307479487" MODIFIED="1392735703604" TEXT="procs">
<node CREATED="1392733424041" ID="ID_473834265" MODIFIED="1392733556266" TEXT="r&#x3000;&#x5728;run queue&#x4e2d;&#x7b49;&#x5f85;&#x7684;&#x8fdb;&#x7a0b;&#xff0c;&#x8fd8;&#x6ca1;&#x6709;&#x88ab;&#x6267;&#x884c;"/>
<node CREATED="1392733507477" ID="ID_72767504" MODIFIED="1392733534103" TEXT="&#xff42;&#x3000;&#x5904;&#x7406;&#x88ab;&#x963b;&#x585e;&#xff0c;&#x7b49;&#x5f85;&#x7ed3;&#x675f;&#x7684;&#x8fdb;&#x7a0b;"/>
</node>
<node CREATED="1392735375049" ID="ID_142981604" MODIFIED="1392735701145" TEXT="memory">
<node CREATED="1392735390692" ID="ID_1859690945" MODIFIED="1392735392706" TEXT="swpd: the amount of virtual memory used."/>
<node CREATED="1392735394891" ID="ID_1650508371" MODIFIED="1392735404207" TEXT="free: the amount of idle memory."/>
<node CREATED="1392735422007" ID="ID_753061100" MODIFIED="1392735423291" TEXT="buff: the amount of memory used as buffers."/>
<node CREATED="1392735438709" ID="ID_193690315" MODIFIED="1392735440017" TEXT="cache: the amount of memory used as cache."/>
<node CREATED="1392735449892" ID="ID_1818878333" MODIFIED="1392735450878" TEXT="inact: the amount of inactive memory. (-a option)"/>
<node CREATED="1392735460818" ID="ID_131676455" MODIFIED="1392735461606" TEXT="active: the amount of active memory. (-a option)"/>
</node>
<node CREATED="1392735493038" ID="ID_239907492" MODIFIED="1392735705538" TEXT="swap">
<node CREATED="1392735511941" ID="ID_1208920335" MODIFIED="1392735513261" TEXT="si: Amount of memory swapped in from disk (/s)."/>
<node CREATED="1392735522990" ID="ID_478384590" MODIFIED="1392735524110" TEXT="so: Amount of memory swapped to disk (/s)."/>
</node>
<node CREATED="1392735553774" ID="ID_1530515686" MODIFIED="1392735555129" TEXT="io">
<node CREATED="1392735571994" ID="ID_1526408230" MODIFIED="1392735573897" TEXT="bi: Blocks received from a block device (blocks/s)."/>
<node CREATED="1392735593165" ID="ID_167420392" MODIFIED="1392735594261" TEXT="bo: Blocks sent to a block device (blocks/s)."/>
</node>
<node CREATED="1392735596861" ID="ID_274369536" MODIFIED="1392735605100" TEXT="system">
<node CREATED="1392733559748" ID="ID_251156017" MODIFIED="1392733616564" TEXT="in &#x6b63;&#x5728;&#x88ab;&#x5904;&#x7406;&#x7684;&#x4e2d;&#x65ad;"/>
<node CREATED="1392733816039" ID="ID_277921796" MODIFIED="1392733828924" TEXT="cs&#x3000;&#x6b63;&#x5728;&#x53d1;&#x751f;&#x7684;&#x4e0a;&#x4e0b;&#x6587;&#x4ea4;&#x6362;"/>
</node>
<node CREATED="1392735621616" ID="ID_1608297569" MODIFIED="1392735624803" TEXT="cpu">
<node CREATED="1392733845733" ID="ID_1911971077" MODIFIED="1392733867171" TEXT="us &#x3000;&#x7528;&#x6237;&#x7a7a;&#x95f4;&#x5360;&#x7528;&#x7684;CPU&#x767e;&#x5206;&#x6bd4;"/>
<node CREATED="1392733891898" ID="ID_446907526" MODIFIED="1392735651223" TEXT="sy &#x5185;&#x6838;&#x548c;&#x4e2d;&#x65ad;&#x5360;&#x7528;&#x7684;CPU&#x767e;&#x5206;&#x6bd4;"/>
<node CREATED="1392733939006" ID="ID_1589560247" MODIFIED="1392733957200" TEXT="id CPU&#x7a7a;&#x95f2;&#x65f6;&#x95f4;"/>
<node CREATED="1392735662045" ID="ID_1046257700" MODIFIED="1392735663197" TEXT="wa: Time spent waiting for IO. Prior to Linux 2.5.41, shown as zero."/>
</node>
</node>
<node CREATED="1392737574750" ID="ID_1256336945" MODIFIED="1392737610484" TEXT="mpstat -p ALL 1">
<node CREATED="1392737653477" ID="ID_1189359514" MODIFIED="1392737706958" TEXT="&#x67e5;&#x770b;&#x6bcf;&#x4e2a;CPU&#xff08;&#x4e2a;&#x6570;&#x4e58;&#x4ee5;&#x6838;&#x6570;&#xff09;&#x7684;&#x7edf;&#x8ba1;&#x6570;&#x636e;"/>
</node>
<node CREATED="1392737635204" FOLDED="true" ID="ID_917405802" MODIFIED="1392781235301" TEXT="while :; do  ps -eo pid,ni,pri,pcpu,psr,comm | grep &#x2018;mysqld&#x2019;; sleep 1; done">
<node CREATED="1392737714511" ID="ID_1884722516" MODIFIED="1392737760230" TEXT="&#x67e5;&#x770b;mysqld&#x8fdb;&#x7a0b;&#x5bf9;&#x5e94;&#x7684;CPU&#x6d88;&#x8017;&#x60c5;&#x51b5;"/>
</node>
</node>
</node>
<node CREATED="1392791618336" FOLDED="true" ID="ID_580844898" MODIFIED="1404974625971" POSITION="right" TEXT="memory">
<node CREATED="1392791621643" ID="ID_1146531454" MODIFIED="1392801192211" TEXT="virtual memory&#x90fd;&#x662f;&#x7531;page&#x7ec4;&#x6210;&#x7684;,4k&#x4e00;&#x4e2a;page"/>
<node CREATED="1392797009405" ID="ID_1541158881" MODIFIED="1392797031640" TEXT="&#x5185;&#x5b58;&#x56de;&#x6536;&#x673a;&#x5236;&#xff1a;PFRA algorithm">
<node CREATED="1392797061917" ID="ID_881643893" MODIFIED="1392797103105" TEXT="kswapd &#x68c0;&#x6d4b;free mem&#x662f;&#x5426;&#x5230;&#x8fbe;&#x6700;&#x5c0f;&#x503c;&#xff0c;&#x5982;&#x679c;&#x662f;&#xff0c;&#x5219;&#x5f3a;&#x8feb;&#x56de;&#x6536;"/>
<node CREATED="1392797105237" ID="ID_655748061" MODIFIED="1392797143247" TEXT="pdflush &#x5c06;page&#x4e2d;&#x7684;&#x5185;&#x5bb9;&#x5199;&#x56de;&#x5230;disk"/>
</node>
<node CREATED="1392801207111" ID="ID_1807436034" MODIFIED="1392801215114" TEXT="&#x7ed3;&#x8bba;">
<node CREATED="1392801217184" ID="ID_525291350" MODIFIED="1392801281757" TEXT="&#x8f83;&#x4f4e;&#x7684;free&#x5185;&#x5b58;&#x662f;&#x597d;&#x4e8b;&#xff0c;&#x53ea;&#x8981;&#x540c;&#x65f6;&#x6ca1;&#x6709;&#x51fa;&#x73b0;&#x9891;&#x7e41;&#x5199;swap&#x548c;disk&#x5c31;&#x884c;"/>
<node CREATED="1392801295438" ID="ID_1221727484" MODIFIED="1392801333604" TEXT="buffer&#x662f;&#x7528;&#x6765;&#x7f13;&#x5b58;&#x8bfb;&#x5199;&#x7ed3;&#x679c;&#x7684;&#xff0c;cache&#x662f;&#x7528;&#x6765;&#x6620;&#x5c04;&#x7a7a;&#x95f4;&#x5730;&#x5740;&#x7684;"/>
<node CREATED="1392801349136" ID="ID_923582589" MODIFIED="1392801451747" TEXT="swap&#x662f;&#x5728;memcache&#x4e0d;&#x591f;&#x7684;&#x65f6;&#x5019;&#x7528;&#x786c;&#x76d8;&#x66ff;&#x4ee3;&#x7684;&#xff0c;&#x5982;&#x679c;&#x51fa;&#x73b0;&#x4e00;&#x76f4;&#x8bfb;&#x5199;swap&#x90a3;&#x5c31;&#x662f;&#x5185;&#x5b58;&#x4e25;&#x91cd;&#x4e0d;&#x8db3;"/>
</node>
</node>
<node CREATED="1392818619292" FOLDED="true" ID="ID_714617058" MODIFIED="1404974631899" POSITION="right" TEXT="io">
<node CREATED="1392818630419" ID="ID_1640878727" MODIFIED="1392818633010" TEXT="fault">
<node CREATED="1392818634491" ID="ID_749180134" MODIFIED="1392819630954" TEXT="MPF:&#x5982;&#x679c;application&#x6253;&#x5f00;&#x65f6;&#x6240;&#x9700;data&#x4e0d;&#x5728;cpu cache&#x6216;physical memory,&#x5219;&#x53d1;&#x52a8;MPF&#xff08;&#x4e00;&#x4e2a;request&#xff09;&#x5c06; data&#x4ece;&#x786c;&#x76d8;&#x8bfb;&#x5165; memory"/>
<node CREATED="1392819313596" ID="ID_899293765" MODIFIED="1392819655619" TEXT="MnPF:applicate&#x6253;&#x5f00;&#x540e;&#xff0c;page&#x88ab;&#x53cd;&#x590d;&#x5229;&#x7528;&#x7684;&#x6b21;&#x6570;"/>
</node>
</node>
</node>
</map>
