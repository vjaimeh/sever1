<?php


$db = new SQLite3('mapbox5.sl3',SQLITE3_OPEN_READWRITE);


if (isset($_POST['login']) ){
	
	$sql = 'INSERT INTO usuarios_accesos(usuario, fecha, posx, posy) VALUES( \''.$_POST['uname'].'\', datetime(\'now\',\'localtime\') , '.$_POST['posx'].' , '.$_POST['posy'].' )';
	
	$sal = $db->exec($sql);
	if ($sal==FALSE)
		echo "error al guardar... <br/> $sql <br/>".$db->lastErrorMsg();
	else 
		header('Location: mapbox5.php');
		//echo "buu";
	
	exit;
}




$res = $db->query('SELECT * FROM usuarios_accesos order by id desc');

$rows = array();

while ($r = $res->fetchArray()) {
    $rows[] = $r;
}
$r['usuarios_conectados'] = $rows;
print json_encode($r);
?>