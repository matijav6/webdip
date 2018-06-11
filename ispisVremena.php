<?php
$url = "vrijeme.txt";

if (!($fp = fopen($url, 'r'))) {
    echo "Problem: nije moguće otvoriti url: " . $url;
    exit;
}
$pomak = fread($fp, filesize($url));
fclose($fp);  
echo date("Y-m-d H:i:s", strtotime("+".$pomak . " hours"));
?>