<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1390209067310" ID="ID_1431014252" MODIFIED="1393252648520" TEXT="django">
<node CREATED="1391411659644" ID="ID_536911598" MODIFIED="1391411668275" POSITION="right" TEXT="&#x9879;&#x76ee;&#x5efa;&#x7acb;&#x521d;&#x671f;">
<node CREATED="1390209128137" ID="ID_1079234826" MODIFIED="1390209141894" TEXT="&#x65b0;&#x5efa;&#x9879;&#x76ee;&#xff1a;django-admin.py startproject mysite"/>
<node CREATED="1390209243756" ID="ID_982999314" MODIFIED="1390209270034" TEXT="&#x542f;&#x52a8;&#x9879;&#x76ee;&#xff1a;python manage.py runserver [8080]"/>
<node CREATED="1391411730279" ID="ID_1286334737" MODIFIED="1391411753010" TEXT="&#x914d;&#x7f6e;&#x6570;&#x636e;&#x5e93;&#xff1a;&#x8981;&#x628a;setting.py&#x4e2d;&#x5173;&#x4e8e;&#x6570;&#x636e;&#x5e93;&#x7684;&#x9009;&#x9879;&#x6539;&#x6210;mysql"/>
<node CREATED="1390210075563" ID="ID_1744442159" MODIFIED="1391411607101" TEXT="&#x5efa;&#x7acb;&#x6570;&#x636e;&#x8868;&#x7ed3;&#x6784;&#xff1a;python manage.py syncdb"/>
<node CREATED="1390464359218" ID="ID_102445446" MODIFIED="1390464377553" TEXT="&#x4ea4;&#x4e92;api:python manage.py shell"/>
</node>
<node CREATED="1391411680274" ID="ID_369796960" MODIFIED="1391411689748" POSITION="right" TEXT="&#x5efa;&#x7acb;app">
<node CREATED="1391411692017" ID="ID_1728630385" MODIFIED="1391411704921" TEXT="python manage.py startapp polls"/>
<node CREATED="1391411706966" ID="ID_937870268" MODIFIED="1391613812183" TEXT="&#x7f16;&#x5199;app&#x7684;model">
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1391412180758" ID="ID_1337107703" MODIFIED="1391412197218" TEXT="&#x5728;setting.py&#x4e2d;&#x5305;&#x542b;polls&#x8fd9;&#x4e2a;app"/>
<node CREATED="1391412198057" ID="ID_1163712348" MODIFIED="1391412239181" TEXT="python manage.py sql polls&#x53ef;&#x4ee5;&#x67e5;&#x770b;&#x4f20;&#x521b;&#x5efa;model&#x8868;&#x7ed3;&#x6784;&#x7684;&#x8bed;&#x53e5;"/>
<node CREATED="1391412240048" ID="ID_1306625880" MODIFIED="1391412415492" TEXT="python manage.py validate&#x53ef;&#x4ee5;&#x67e5;&#x770b;model&#x662f;&#x5426;&#x5305;&#x542b;&#x9519;&#x8bef;"/>
<node CREATED="1391412416695" ID="ID_1985279136" MODIFIED="1391412438615" TEXT="&#x5982;&#x679c;&#x6ca1;&#x6709;&#x9519;&#x8bef;&#xff0c;&#x53ef;&#x4ee5;&#x4f7f;&#x7528;python manage.py syncdb&#x521b;&#x5efa;&#x8868;"/>
<node CREATED="1391412459938" ID="ID_1173808960" MODIFIED="1391412481835" TEXT="python manage.py shell &#x53ef;&#x4ee5;&#x52a8;&#x6001;&#x8c03;&#x8bd5;"/>
</node>
</node>
<node CREATED="1391419238373" ID="ID_581639430" MODIFIED="1391419246893" POSITION="right" TEXT="&#x81ea;&#x52a8;&#x751f;&#x6210;&#x540e;&#x53f0;">
<node CREATED="1391419248498" ID="ID_982025309" MODIFIED="1391419363393" TEXT="&#x5728;polls/admin.py&#x4e2d;,admin_set_register(Poll)"/>
<node CREATED="1391419394470" ID="ID_280821157" MODIFIED="1391419423684" TEXT="&#x53ef;&#x4ee5;&#x8fdb;&#x884c;&#x9009;&#x9879;&#x8bbe;&#x7f6e;&#xff0c;&#x8bbe;&#x5b9a;&#x540e;&#x53f0;&#x663e;&#x793a;&#x6837;&#x5f0f;&#x548c;&#x6570;&#x636e;"/>
</node>
<node CREATED="1391419430697" ID="ID_1346314890" MODIFIED="1391419459096" POSITION="right" TEXT="view&#x662f;&#x63a7;&#x5236;&#x5668;">
<node CREATED="1391419995867" ID="ID_794459915" MODIFIED="1391420031414" TEXT="view&#x7684;HttpResponse"/>
<node CREATED="1391420035727" ID="ID_1761957809" MODIFIED="1391420042645" TEXT="app&#x5185;&#x90e8;&#x7684;urls.py"/>
<node CREATED="1391420044575" ID="ID_1781330633" MODIFIED="1391420051798" TEXT="&#x5168;&#x5c40;&#x7684;urls.py"/>
</node>
<node CREATED="1391498111217" ID="ID_754939552" MODIFIED="1391498122875" POSITION="right" TEXT="&#x751f;&#x6210;&#x8868;&#x5355;">
<node CREATED="1391498134270" ID="ID_1761423375" MODIFIED="1391498162072" TEXT="method:{% url &apos;polls:detail&apos; poll.id %}"/>
</node>
<node CREATED="1391498172182" ID="ID_1595256191" MODIFIED="1391498180344" POSITION="right" TEXT="&#x8868;&#x5355;&#x5904;&#x7406;">
<node CREATED="1391498185122" ID="ID_288651195" MODIFIED="1391613848178" TEXT="request.POST[&apos;***&apos;]&#x83b7;&#x53d6;post&#x6570;&#x636e;">
<icon BUILTIN="messagebox_warning"/>
</node>
<node CREATED="1391498223786" ID="ID_1747806188" MODIFIED="1391498257644" TEXT="HttpResponseRedirect&#x8df3;&#x8f6c;&#x9875;&#x9762;&#xff0c;&#x4e0d;&#x76f4;&#x63a5;&#x8fd4;&#x56de;"/>
</node>
<node CREATED="1391527774775" ID="ID_478904000" MODIFIED="1391527785098" POSITION="right" TEXT="&#x81ea;&#x52a8;&#x8868;&#x5355;generic"/>
<node CREATED="1391527786183" ID="ID_65447953" MODIFIED="1391527805797" POSITION="right" TEXT="&#x81ea;&#x52a8;&#x5316;&#x6d4b;&#x8bd5;">
<node CREATED="1391531949754" ID="ID_1810575462" MODIFIED="1391531970722" TEXT="&#x5355;&#x5143;&#x6d4b;&#x8bd5;&#x4f7f;&#x7528;&#x7684;&#x662f;&#x6d4b;&#x8bd5;&#x6570;&#x636e;&#x5e93;&#xff0c;&#x548c;&#x6b63;&#x5f0f;&#x5e93;&#x65e0;&#x5173;&#xff0c;&#x7528;&#x5b8c;&#x9500;&#x6bc1;"/>
<node CREATED="1391527991878" ID="ID_746192716" MODIFIED="1391528012196" TEXT="test command: python manage.py test polls"/>
<node CREATED="1391527807326" ID="ID_1345065316" MODIFIED="1391527894748" TEXT="simple: assertEqual(&#x5bf9;&#x8c61;.&#x88ab;&#x6d4b;&#x51fd;&#x6570;&#xff0c;&#x9884;&#x8ba1;&#x8fd4;&#x56de;&#x7ed3;&#x679c;),&#x5982;&#x679c;&#x8fd4;&#x56de;&#x7ed3;&#x679c;&#x4e0d;&#x6b63;&#x786e;&#x62a5;&#x9519;"/>
<node CREATED="1391531975385" ID="ID_907641770" MODIFIED="1391532019399" TEXT="test client&#x6a21;&#x62df;http&#x8bf7;&#x6c42;&#xff0c;&#x53ef;&#x4ee5;&#x751f;&#x6210;&#x5bf9;&#x8c61;&#x6570;&#x636e;&#xff0c;&#x7136;&#x540e;&#x6d4b;&#x8bd5;views&#x662f;&#x4e0d;&#x662f;&#x6309;&#x7167;&#x8981;&#x6c42;&#x8fd4;&#x56de;"/>
<node CREATED="1391532022047" ID="ID_1064125593" MODIFIED="1391532063807" TEXT="&#x66f4;&#x6df1;&#x5165;&#x7684;&#x7c7b;&#x4f3c;Selenium&#xff0c;&#x53ef;&#x4ee5;&#x6a21;&#x62df;&#x6d4f;&#x89c8;&#x5668;&#x6d4b;&#x8bd5;python&#x751a;&#x81f3;javascript"/>
</node>
<node CREATED="1391613621180" ID="ID_460081229" MODIFIED="1391613629733" POSITION="right" TEXT="&#x9759;&#x6001;staticfiles">
<node CREATED="1391613633960" ID="ID_344702323" MODIFIED="1391613642463" TEXT="&#x6839;&#x76ee;&#x5f55;&#x4e0b;&#x5efa;&#x7acb;static"/>
<node CREATED="1391613645392" ID="ID_925094732" MODIFIED="1391613751681">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      setting.py&#20013;&#65292;&#21152;&#20837;
    </p>
    <p>
      STATICFILES_DIRS=(
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;os.path.join(BASE_DIR,'static')
    </p>
    <p>
      )
    </p>
    <p>
      &#36825;&#26679;&#21487;&#20197;&#35299;&#20915;&#38745;&#24577;&#25991;&#20214;404&#38169;&#35823;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</map>
