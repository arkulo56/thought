<?php
//如把字符串“abcdef”前面的2个字符'a'和'b'移动到字符串的尾部，使得原字符串变成字符串“cdefab”
function reverseString($string)
{
	$len = mb_strlen($string);
	$forNumber = ceil($len/2);
	$tmp = "";
	for($i=0;$i<$forNumber;$i++)
	{
		$tmp = $string[$len-$i-1];
		$string[$len-$i-1] = $string[$i];
		$string[$i] = $tmp;
	}
	return $string;
}

function main($str,$offset)
{
	$str1=substr($str,0,$offset);
	$str2=substr($str,$offset-1);

	$res1 = reverseString($str1);
	echo $res1,"\n\r";
	$res2 = reverseString($str2);
	echo $res2,"\n\r";
	$res = reverseString($res1.$res2);
	echo $res,"\n\r";
}
main("abcdef",4);
?>
