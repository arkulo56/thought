<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1397834283165" ID="ID_1577762043" MODIFIED="1397834291102" TEXT="python&#x9519;&#x8bef;&#x8c03;&#x8bd5;">
<node CREATED="1397834942440" ID="ID_902953712" MODIFIED="1397835660260" POSITION="right" TEXT="&#x9519;&#x8bef;">
<font BOLD="true" NAME="SansSerif" SIZE="18"/>
<node CREATED="1397834298072" ID="ID_1860959581" MODIFIED="1397834971365" TEXT="try...except...finally">
<node CREATED="1397834345358" HGAP="24" ID="ID_1443522265" MODIFIED="1397834374174" TEXT="&#x4f7f;&#x7528;try...except&#x6355;&#x83b7;&#x9519;&#x8bef;&#x8fd8;&#x6709;&#x4e00;&#x4e2a;&#x5de8;&#x5927;&#x7684;&#x597d;&#x5904;&#xff0c;&#x5c31;&#x662f;&#x53ef;&#x4ee5;&#x8de8;&#x8d8a;&#x591a;&#x5c42;&#x8c03;&#x7528;&#xff0c;&#x6bd4;&#x5982;&#x51fd;&#x6570;main()&#x8c03;&#x7528;foo()&#xff0c;foo()&#x8c03;&#x7528;bar()&#xff0c;&#x7ed3;&#x679c;bar()&#x51fa;&#x9519;&#x4e86;&#xff0c;&#x8fd9;&#x65f6;&#xff0c;&#x53ea;&#x8981;main()&#x6355;&#x83b7;&#x5230;&#x4e86;&#xff0c;&#x5c31;&#x53ef;&#x4ee5;&#x5904;&#x7406;" VSHIFT="-28"/>
</node>
<node CREATED="1397834532870" ID="ID_1100281355" MODIFIED="1397834972186" TEXT="&#x8c03;&#x7528;&#x5806;&#x6808;">
<node CREATED="1397834541638" ID="ID_1473352198" MODIFIED="1397834605708" TEXT="Traceback (most recent call last):   &#xa;File &quot;err.py&quot;, line 11, in &lt;module&gt;     main()   &#xa;File &quot;err.py&quot;, line 9, in main     bar(&apos;0&apos;)   &#xa;File &quot;err.py&quot;, line 6, in bar     return foo(s) * 2   &#xa;File &quot;err.py&quot;, line 3, in foo     return 10 / int(s) &#xa;ZeroDivisionError: integer division or modulo by zero">
<node CREATED="1397834611882" ID="ID_1510616750" MODIFIED="1397834630168" TEXT="&#x7a0b;&#x5e8f;&#x51fa;&#x9519;&#x4f1a;&#x663e;&#x793a;&#x8fd9;&#x4e2a;&#x5806;&#x6808;&#x4fe1;&#x606f;"/>
</node>
</node>
<node CREATED="1397834639260" ID="ID_463783561" MODIFIED="1397834972914" TEXT="&#x8bb0;&#x5f55;&#x9519;&#x8bef;">
<node CREATED="1397834643967" ID="ID_500798127" MODIFIED="1397834653177" TEXT="logging&#x6a21;&#x5757;">
<node CREATED="1397834664018" ID="ID_73109055" MODIFIED="1397834675607">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      except StandardError, e:&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      logging.exception(e)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1397834696923" ID="ID_1786043709" MODIFIED="1397834711645" TEXT="logging&#x8bb0;&#x5f55;&#x9519;&#x8bef;&#x7684;&#x540c;&#x65f6;&#xff0c;&#x8fd8;&#x80fd;&#x8ba9;&#x7a0b;&#x5e8f;&#x7ee7;&#x7eed;&#x8d70;&#x4e0b;&#x53bb;"/>
</node>
<node CREATED="1397834741164" ID="ID_887901908" MODIFIED="1397834973396" TEXT="raise&#x4e3b;&#x52a8;&#x629b;&#x51fa;&#x9519;&#x8bef;">
<node CREATED="1397834879798" ID="ID_811222876" MODIFIED="1397834901804" TEXT="raise&#x4e0d;&#x5e26;&#x53c2;&#x6570;&#x5c31;&#x662f;&#x5c06;&#x9519;&#x8bef;&#x539f;&#x6837;&#x629b;&#x5411;&#x4e0a;&#x5c42;"/>
</node>
</node>
<node CREATED="1397834975859" ID="ID_929818547" MODIFIED="1397835664174" POSITION="right" TEXT="&#x8c03;&#x8bd5;">
<font BOLD="true" NAME="SansSerif" SIZE="18"/>
<node CREATED="1397835132757" ID="ID_1931747557" MODIFIED="1397835141438" TEXT="print &#x6c38;&#x8fdc;&#x7684;&#x7ecf;&#x5178;&#x548c;&#x66b4;&#x529b;&#x65b9;&#x5f0f;"/>
<node CREATED="1397835143783" ID="ID_1284141550" MODIFIED="1397835147112" TEXT="&#x65ad;&#x8a00;">
<node CREATED="1397835155446" ID="ID_599778049" MODIFIED="1397835178879" TEXT="assert n!=0 &apos;n is zero&apos;"/>
<node CREATED="1397835189432" ID="ID_702062453" MODIFIED="1397835216637" TEXT="python -O err.py &#x8fd9;&#x91cc;-O&#x5c31;&#x53ef;&#x4ee5;&#x5c4f;&#x853d;&#x65ad;&#x8a00;&#xff0c;&#x89e3;&#x91ca;&#x5668;&#x8ba4;&#x4e3a;&#x4ed6;&#x662f;pass"/>
</node>
<node CREATED="1397835350654" ID="ID_1227416868" MODIFIED="1397835356495" TEXT="logging"/>
<node CREATED="1397835427025" ID="ID_640855359" MODIFIED="1397835429854" TEXT="pdb">
<node CREATED="1397835432853" ID="ID_1446288570" MODIFIED="1397835440564" TEXT="&#x5355;&#x6b65;">
<node CREATED="1397835462224" ID="ID_1264166296" MODIFIED="1397835469498" TEXT="python -m pdb xxx.py"/>
<node CREATED="1397835481045" ID="ID_1300094606" MODIFIED="1397835486275" TEXT="1 &#x67e5;&#x770b;&#x4ee3;&#x7801;"/>
<node CREATED="1397835498819" ID="ID_1989137731" MODIFIED="1397835508979" TEXT="n &#x5355;&#x6b65;&#x6267;&#x884c;&#x4ee3;&#x7801;"/>
<node CREATED="1397835515693" ID="ID_176560299" MODIFIED="1397835523268" TEXT="p &#x53d8;&#x91cf;&#x540d;"/>
<node CREATED="1397835528776" ID="ID_895363858" MODIFIED="1397835532932" TEXT="q &#x7ed3;&#x675f;&#x8c03;&#x8bd5;"/>
</node>
<node CREATED="1397835543215" ID="ID_1395054514" MODIFIED="1397835548567" TEXT="&#x76f4;&#x8fbe;&#x65ad;&#x70b9;">
<node CREATED="1397835555834" ID="ID_649749273" MODIFIED="1397835584433">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      import pdb
    </p>
    <p>
      ....
    </p>
    <p>
      pdb.set_strace()
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
</map>
