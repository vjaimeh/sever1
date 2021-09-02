<?php

include 'cls_blob.php';

$blobObj = new cls_blob();

$a = $blobObj->selectBlob($_GET['lnk']);
header("Content-Type: image/jpeg");
echo $a['data'];





