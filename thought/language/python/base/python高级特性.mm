<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1394884625467" ID="ID_1821188659" MODIFIED="1394884640122" TEXT="python&#x9ad8;&#x7ea7;&#x7279;&#x6027;">
<node CREATED="1394884917279" ID="ID_1518956060" MODIFIED="1394952681778" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4"><b>&#20999;&#29255;</b></font>
    </p>
    <p>
      L&#26159;&#19968;&#20010;list&#25110;tuple
    </p>
  </body>
</html></richcontent>
<node CREATED="1394884974483" ID="ID_1991811806" MODIFIED="1394884994324" TEXT="&#x53d6;&#x524d;&#x4e09;&#x4e2a;&#xff1a;L[0:3]"/>
<node CREATED="1394884999173" ID="ID_520694843" MODIFIED="1394885010199" TEXT="&#x53d6;&#x524d;&#x4e09;&#x4e2a;&#xff1a;L[:3]"/>
<node CREATED="1394885019381" ID="ID_666398355" MODIFIED="1394885037354" TEXT="&#x53d6;&#x7b2c;&#x4e8c;&#x4e2a;&#x548c;&#x7b2c;&#x4e09;&#x4e2a;&#xff1a;L[1:3]"/>
<node CREATED="1394885049660" ID="ID_831174386" MODIFIED="1394885077659" TEXT="&#x53d6;&#x5012;&#x6570;&#x7b2c;&#x4e00;&#x4e2a;&#xff1a;L[-1]"/>
<node CREATED="1394885162861" ID="ID_1571868639" MODIFIED="1394885199860" TEXT="&#x524d;&#x5341;&#x4e2a;&#x6570;&#x6bcf;&#x4e24;&#x4e2a;&#x53d6;&#x4e00;&#x4e2a;&#xff1a;L[:10:2]"/>
<node CREATED="1394885211173" ID="ID_608476757" MODIFIED="1394885248961" TEXT="&#x6240;&#x6709;&#x6570;&#x6bcf;&#x4e94;&#x4e2a;&#x53d6;&#x4e00;&#x4e2a;&#xff1a;L[::5]"/>
<node CREATED="1394932065108" ID="ID_1894323182" MODIFIED="1394932077304" TEXT="&#x539f;&#x6837;&#x8d4b;&#x503c;&#xff1a;L[:]"/>
<node CREATED="1394932099723" ID="ID_1896924833" MODIFIED="1394932150630">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#2e70cf">&#23383;&#31526;&#20018;&#20063;&#21487;&#20197;&#30475;&#20316;&#26159;&#19968;&#20010;list&#65292;&#25152;&#20197;&#20063;&#21487;&#20197;&#29992;&#20999;&#29255;&#21151;&#33021;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1394950020412" ID="ID_1620464329" MODIFIED="1394952693638" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4"><b>&#36845;&#20195;</b></font>
    </p>
    <p>
      for...in
    </p>
  </body>
</html></richcontent>
<node CREATED="1394950026859" ID="ID_290317598" MODIFIED="1394950101358">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21028;&#26029;&#26159;&#21542;&#20026;&#21487;&#36845;&#20195;&#23545;&#35937;&#65306;
    </p>
    <p>
      from collections import Iterable
    </p>
    <p>
      isinstance('abc', Iterable)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1394950132466" ID="ID_679956087" MODIFIED="1394950536324" TEXT="list&#x548c;tuple&#xff1a;for a in list"/>
<node CREATED="1394950538576" ID="ID_205477262" MODIFIED="1394950544606" TEXT="dict&#xff1a;">
<node CREATED="1394950558402" ID="ID_195465652" MODIFIED="1394950578614" TEXT="&#x9ed8;&#x8ba4;for a in dict&#x5faa;&#x73af;&#x6253;&#x5370;&#x7684;&#x662f;key"/>
<node CREATED="1394950589919" ID="ID_399730245" MODIFIED="1394950620608" TEXT="for k,v in dict.itervalues()&#x6253;&#x5370;&#x7684;&#x662f;key&#x548c;value"/>
</node>
<node CREATED="1394950641664" ID="ID_516465647" MODIFIED="1394950646754" TEXT="&#x5b57;&#x7b26;&#x4e32;&#x4e5f;&#x53ef;&#x4ee5;&#x8fed;&#x4ee3;"/>
</node>
<node CREATED="1394952290597" ID="ID_449817158" MODIFIED="1394952705329" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4"><b>&#21015;&#34920;&#29983;&#25104;&#22120;</b></font>
    </p>
    <p>
      &#29992;&#26469;&#21019;&#24314;list
    </p>
  </body>
</html></richcontent>
<node CREATED="1394952329464" ID="ID_1100326816" MODIFIED="1394952360095" TEXT="[a*a for a in range(1,11)]"/>
<node CREATED="1394952369848" ID="ID_1118655890" MODIFIED="1394952393340" TEXT="[a*a for a in range(1,11) if a%2 == 0]"/>
<node CREATED="1394952414006" ID="ID_723870631" MODIFIED="1394952477194" TEXT="&#x53cc;&#x5c42;&#x5faa;&#x73af;&#xff1a;[m + n for m in &apos;ABC&apos; for m in &apos;XYZ&apos; ]"/>
<node CREATED="1394952524418" ID="ID_730622332" MODIFIED="1394952645701" TEXT="&#x591a;&#x53d8;&#x91cf;&#xff1a;[k + &apos;=&apos; + v for k,v in dict.iteritems()]"/>
</node>
<node CREATED="1394953312432" ID="ID_521857369" MODIFIED="1394953411215" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4"><b>&#29983;&#25104;&#22120; </b></font>
    </p>
    <p>
      <font size="3">&#23601;&#26159;&#19968;&#31181;&#31639;&#27861;&#65292;&#19981;&#23454;&#38469;&#29983;&#25104;list</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1394953413332" ID="ID_1952845987" MODIFIED="1394953493744" TEXT="&#x548c;&#x5217;&#x8868;&#x751f;&#x6210;&#x5668;&#x4e0d;&#x540c;&#xff0c;[]&#x548c;()">
<node CREATED="1394953433453" ID="ID_1099311725" MODIFIED="1394953450677" TEXT="&#x5217;&#x8868;&#x751f;&#x6210;&#x5668;&#xff1a;[a*a for a in range(1,11)]"/>
<node COLOR="#1713e9" CREATED="1394953451949" ID="ID_1746330336" MODIFIED="1399428623011" TEXT="&#x751f;&#x6210;&#x5668;&#xff1a;(a*a for a in range(1,11))"/>
</node>
<node CREATED="1394953510148" ID="ID_691896529" MODIFIED="1394953654798">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20989;&#25968;&#12289;yield&#12289;&#20013;&#26029;&#12289;&#24490;&#29615;
    </p>
    <p>
      &#20989;&#25968;&#37324;&#26377;&#24490;&#29615;&#65292;&#27599;&#27425;yield&#20013;&#26029;&#65292;&#28982;&#21518;&#37325;&#26032;&#35843;&#29992;&#21448;&#20174;&#20013;&#26029;&#30340;&#22320;&#26041;&#24320;&#22987;
    </p>
  </body>
</html></richcontent>
<node CREATED="1394953561076" ID="ID_1930350875" MODIFIED="1394953608313">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      def fab(max):
    </p>
    <p>
      &#160;&#160;&#160;&#160;n, a, b = 0, 0, 1
    </p>
    <p>
      &#160;&#160;&#160;&#160;while n &lt; max:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;yield b
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;a, b = b, a + b
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;n = n + 1
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</map>
