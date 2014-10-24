<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1397913085523" ID="ID_1002179744" MODIFIED="1397913096733" TEXT="python&#x8fdb;&#x7a0b;&#x548c;&#x7ebf;&#x7a0b;">
<node CREATED="1397915214418" ID="ID_814612560" MODIFIED="1397915220657" POSITION="right" TEXT="&#x591a;&#x8fdb;&#x7a0b;">
<node CREATED="1397915238827" ID="ID_987435211" MODIFIED="1397915275169" TEXT="pid = fork()&#x751f;&#x6210;&#x5b50;&#x8fdb;&#x7a0b;">
<node CREATED="1397915277060" ID="ID_943252808" MODIFIED="1397915331523" TEXT="pid==0,&#x5f53;&#x524d;&#x8fdb;&#x7a0b;&#x4e3a;&#x5b50;&#x8fdb;&#x7a0b;"/>
<node CREATED="1397915334286" ID="ID_210243042" MODIFIED="1397915365298" TEXT="pid!=0,&#x5f53;&#x524d;&#x8fdb;&#x7a0b;&#x4e3a;&#x7236;&#x8fdb;&#x7a0b;&#xff0c;pid&#x4e3a;&#x5b50;&#x8fdb;&#x7a0b;&#x7f16;&#x53f7;"/>
<node CREATED="1397915375915" ID="ID_1903873633" MODIFIED="1397915391993" TEXT="os.getpid()&#x83b7;&#x5f97;&#x5f53;&#x524d;&#x8fdb;&#x7a0b;pid"/>
<node CREATED="1397915392855" ID="ID_1683322187" MODIFIED="1397915403076" TEXT="os.getppid()&#x83b7;&#x5f97;&#x7236;&#x8fdb;&#x7a0b;pid"/>
<node CREATED="1397915823393" ID="ID_1633152358" MODIFIED="1397915844866" TEXT="&#x4f8b;&#xff1a;apache&#x5c31;&#x662f;&#x8fd9;&#x79cd;&#x539f;&#x7406;">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1397915421483" ID="ID_127263403" MODIFIED="1397915435840" TEXT="multiprocessing&#x652f;&#x6301;&#x8de8;&#x5e73;&#x53f0;fork">
<node CREATED="1397915479672" ID="ID_1203589502" MODIFIED="1397915527646" TEXT="Process&#x5b9e;&#x73b0;fork&#x529f;&#x80fd;&#xff0c;start()&#x5f00;&#x59cb;"/>
</node>
<node CREATED="1397915553230" ID="ID_839772867" MODIFIED="1397915758612" TEXT="Pool&#x8fdb;&#x7a0b;&#x6c60;---&#x4e00;&#x6b21;&#x6027;&#x751f;&#x6210;&#x591a;&#x4e2a;&#x8fdb;&#x7a0b;">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1397915963443" ID="ID_149123773" MODIFIED="1397916020723" TEXT="p=Pool(5) &#x5176;&#x4e2d;5&#x5e94;&#x8be5;&#x4e0e;CPU&#x6838;&#x6570;&#x4fdd;&#x6301;&#x4e00;&#x81f4;"/>
<node CREATED="1397915871654" ID="ID_1530974201" MODIFIED="1397915948307">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      p = Pool()
    </p>
    <p>
      for i in range(5):
    </p>
    <p>
      &#160;&#160;&#160;&#160;p.apply_async(long_time_task, args=(i,))
    </p>
    <p>
      print 'Waiting for all subprocesses done...'
    </p>
    <p>
      p.close()
    </p>
    <p>
      p.join()
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1397916338245" ID="ID_1973059764" MODIFIED="1399363969018" TEXT="&#x8fdb;&#x7a0b;&#x95f4;&#x901a;&#x4fe1;Queue/Pipes&#x7b49;">
<node CREATED="1397916606207" ID="ID_1659306105" MODIFIED="1397916650102" TEXT="fork&#x4e24;&#x4e2a;&#x5b50;&#x8fdb;&#x7a0b;&#xff0c;&#x4e00;&#x4e2a;&#x5199;queue,&#x53e6;&#x4e00;&#x4e2a;&#x8bfb;&#x5faa;&#x73af;Queue"/>
</node>
</node>
<node CREATED="1399364093600" ID="ID_1213972525" MODIFIED="1399364098243" POSITION="right" TEXT="&#x7ebf;&#x7a0b;">
<node CREATED="1399365799510" ID="ID_1354887311" MODIFIED="1399365939382" TEXT="python&#x591a;&#x7ebf;&#x7a0b;&#x4e0d;&#x80fd;&#x8dd1;&#x6ee1;&#x591a;&#x6838;CPU&#xff0c;&#x56e0;&#x4e3a;&#x89e3;&#x91ca;&#x5668;&#x4e2d;GIL&#x662f;&#x4e2a;&#x7ebf;&#x7a0b;&#x9501;&#xff0c;&#x9650;&#x5236;&#x7ebf;&#x7a0b;&#x53ea;&#x80fd;&#x5728;&#x4e00;&#x4e2a;CPU&#x4e0a;&#x6267;&#x884c;&#xff08;&#x4e0d;&#x662f;&#x771f;&#x6b63;&#x7684;&#x5e76;&#x884c;&#xff0c;&#x4e0d;&#x80fd;&#x5229;&#x7528;&#x591a;&#x6838;&#xff09;,&#x6240;&#x4ee5;&#x591a;&#x7ebf;&#x7a0b;&#x5e76;&#x884c;&#x5bf9;&#x4e8e;python&#x6765;&#x8bf4;&#xff0c;&#x5c31;&#x662f;&#x4e2a;&#x7f8e;&#x597d;&#x7684;&#x613f;&#x671b;"/>
<node CREATED="1399366116187" ID="ID_1687324235" MODIFIED="1399366203145" TEXT="&#x6d4b;&#x8bd5;&#x591a;&#x7ebf;&#x7a0b;&#xff1a;&#x5199;&#x6b7b;&#x5faa;&#x73af;&#x51fd;&#x6570;&#xff0c;&#x4f20;&#x5165;&#x7ebf;&#x7a0b;&#xff0c;&#x7ebf;&#x7a0b;&#x7684;&#x6570;&#x91cf;&#x548c;CPU&#x6838;&#x6570;&#x76f8;&#x7b49;&#xff0c;&#x4f8b;&#x5982;4&#x6838;&#xff0c;&#x67e5;&#x770b;cpu&#x5229;&#x7528;&#x91cc;&#x662f;&#x4e0d;&#x662f;&#x8fbe;&#x5230;400%,&#x5982;&#x679c;&#x662f;&#x8fd9;&#x6837;&#x7684;&#x8bdd;&#xff0c;&#x624d;&#x662f;&#x771f;&#x6b63;&#x7684;&#x767e;&#x5206;&#x767e;&#x5e76;&#x53d1;&#x591a;&#x5229;&#x7528;">
<icon BUILTIN="messagebox_warning"/>
</node>
<node CREATED="1399365955904" ID="ID_803811048" MODIFIED="1399365962648" TEXT="&#x5b9e;&#x73b0;">
<node CREATED="1399365972307" ID="ID_1787535024" MODIFIED="1399365992551" TEXT="thread&#x548c;threading&#x4e24;&#x4e2a;&#x6a21;&#x5757;">
<node CREATED="1399366012273" ID="ID_1432274971" MODIFIED="1399366035472" TEXT="&#x542f;&#x52a8;&#x4e00;&#x4e2a;&#x7ebf;&#x7a0b;&#x5c31;&#x662f;&#x628a;&#x4e00;&#x4e2a;&#x51fd;&#x6570;&#x4f20;&#x5165;thread&#x5b9e;&#x4f8b;&#xff0c;&#x7136;&#x540e;start()&#x8fd9;&#x4e2a;&#x5b9e;&#x4f8b;"/>
</node>
<node CREATED="1399366036834" ID="ID_1757230357" MODIFIED="1399366107141" TEXT="threading.Lock()&#x5b9e;&#x73b0;&#x9501;&#x5b9a;&#x529f;&#x80fd;&#xff0c;&#x9632;&#x6b62;&#x5171;&#x540c;&#x4fee;&#x6539;">
<node CREATED="1399366044732" ID="ID_1442725364" MODIFIED="1399366071723" TEXT="&#x7ebf;&#x7a0b;&#x53ef;&#x4ee5;&#x8bbf;&#x95ee;MainThread&#x4e2d;&#x7684;&#x516c;&#x5171;&#x53d8;&#x91cf;&#xff0c;&#x4f1a;&#x9020;&#x6210;&#x6df7;&#x4e71;"/>
</node>
</node>
</node>
</node>
</map>
