<?php

$a = "abcdef";
$b = "bdcg";

$alen = mb_strlen($a);
$blen = mb_strlen($b);

$num = 1;
$sign = 1;

$primeNumber = array("a"=>2, "b"=>3, "c"=>5,"d"=>7,"e"=>11, "f"=>13, "g"=>17, "h"=>19,"i"=>23, "j"=>29, "k"=>31, "l"=>37, "m"=>41, "n"=>43, "o"=>47, "p"=>53, "q"=>59,"r"=>61, "s"=>67, "t"=>71, "u"=>73, "v"=>79, "w"=>83, "x"=>89, "y"=>97, "z"=>101);

for($i=0;$i<$alen;$i++)
{
	$num *= $primeNumber[$a[$i]];
}

for($j=0;$j<$blen;$j++)
{
	if(($num % $primeNumber[$b[$j]])!=0)
	{
		$sign = 0;
		break;	
	}
}
if($sign==1)
{
	echo "ok","\n\r";
}else
{
	echo "no","\n\r";
}
?>
