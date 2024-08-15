<?php

	/*$conexion= mysql_connect( "localhost", "muffagco_adsi", "adsiexposena2015" );		//Esto ya no va as�.
	mysql_select_db( "muffagco_adsi_1", $conexion);*/					//Esto ya no va as�.
	
	//$conexion= mysql_connect( "localhost", "root", "" );	//Esto ya no va as�.
	//mysql_select_db( "bd_qr_code_sena", $conexion ); 	//Esto ya no va as�.
	
	//Los par�metros de la conexi�n deben estar as�, nadie debe tocar nada m�s excepto los valores.
	$servidor = "localhost";
	$usuario = "root";
	$clave = "";
	$bd ="bd_reg_entrada_2024a";  //PAra el registro de la entrada del Sena, sede Modelo.
	$encuesta = 14;
	//$bd ="bd_ser";      #"bd_qr_code_sena";
	/* �Por qu� est�n as�?, porque cada persona dependiendo de cada equipo y versi�n de xampp puede usar un tipo diferente de
	conexi�n, est�n los que usan mysql, otros usan mysqli y otros PDO. Con este sencillo sistema de variables se puede
	acceder a los par�metros a trav�s de un include y ya. */
?>