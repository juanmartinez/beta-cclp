<?php
include('../classes/app.class.php');
define('PORTADACOCINANDO',true);

$clipsfiltro = new clipcocinandoTable();
$tpl = 'cocinando/index.tpl';
$smarty->cache_lifetime = 3600;

if(!$smarty->is_cached($tpl, $cache_pattern)){
    include('../classes/header.cocinando.php'); 
    $lista = $clipsfiltro->readData();

    for($i=0; $i<count($lista); $i++){
        if($i != (count($lista))-1){
            $cadena = $cadena . '"' . $lista[$i]['titulo'] . '"'. ','; 
        }else{    
            $cadena = $cadena . '"' . $lista[$i]['titulo'] . '"';
        }
    }

    $smarty->assign('listavideos', $cadena);
    $smarty->assign('otrassecciones',$secciones);
    $smarty->assign('secciones',$rows);
}

$smarty->display("cocinando/index.tpl", $cache_pattern);
?>
