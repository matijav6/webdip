<?php
$url = "vrijeme.txt";

if (!($fp = fopen($url, 'r'))) {
    echo "Problem: nije moguće otvoriti url: " . $url;
    exit;
}
$pomak = fread($fp, filesize($url));
fclose($fp);

$vrijeme_servera = time();
$vrijeme_sustava = $vrijeme_servera + ($pomak * 60 * 60);    
echo date('d.m.Y H:i:s', $vrijeme_sustava);
?>