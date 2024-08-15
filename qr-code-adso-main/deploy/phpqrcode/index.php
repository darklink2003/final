<?php    
/*
 * PHP QR Code encoder
 *
 * Exemplatory usage
 *
 * PHP QR Code is distributed under LGPL 3
 * Copyright (C) 2010 Dominik Dzienia <deltalab at poczta dot fm>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3 of the License, or any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
 */
    
    
    include( "../nucleo.php" );
    $obj_nucleo = new nucleo();
    
    echo "<h1><a href='../'>Volver a ingresar personas</a></h1><br><br>";
    
    //echo "<h1>PHP QR Code</h1><hr/>";
    
    //set it to writable location, a place for temp generated PNG files
    $PNG_TEMP_DIR = dirname(__FILE__).DIRECTORY_SEPARATOR.'temp'.DIRECTORY_SEPARATOR;
    
    //html PNG location prefix
    $PNG_WEB_DIR = 'temp/';

    include "qrlib.php";    
    
    //ofcourse we need rights to create temp dir
    if (!file_exists($PNG_TEMP_DIR))
        mkdir($PNG_TEMP_DIR);
    
    
    $filename = $PNG_TEMP_DIR.'test.png';
    
    //processing form input
    //remember to sanitize user input in real-life solution !!!
    $errorCorrectionLevel = 'L';
    if (isset($_REQUEST['level']) && in_array($_REQUEST['level'], array('L','M','Q','H')))
        $errorCorrectionLevel = $_REQUEST['level'];    

    $matrixPointSize = 4;
    if (isset($_REQUEST['size']))
        $matrixPointSize = min(max((int)$_REQUEST['size'], 1), 10);


    //--------------------------impresion-------------------------------------------------------------------------------------
    echo "<div id='area-impresion' style='border: dashed; width: 600px;'>"; 
    echo "<div>";

    if (isset($_REQUEST['data'])) //Si el dato, en este caso el documento, existe... construya la impresión.
    {    
        //it's very important!
        if (trim($_REQUEST['data']) == '')
            die('data cannot be empty! <a href="?">back</a>');
            
        // user data
        $solo_nombre_archivo = 'test'.md5($_REQUEST['data'].'|'.$errorCorrectionLevel.'|'.$matrixPointSize).'_'.date("Y_m_d_H_i_s").'camilo_f.png';
        $filename = $PNG_TEMP_DIR.$solo_nombre_archivo;
        //$filename = $PNG_TEMP_DIR.'test'.md5($_REQUEST['data'].'|'.$errorCorrectionLevel.'|'.$matrixPointSize).'_'.date("Y_m_d_H_i_s").'camilo_f.png';
        QRcode::png($_REQUEST['data'], $filename, $errorCorrectionLevel, $matrixPointSize, 2);
        
        //04/11/2015 actualizando la dirección de la imagen en la base de datos.
        $obj_nucleo->actualizar_url_imagen( $_REQUEST[ 'tipo_doc' ], $_REQUEST[ 'data' ], "phpqrcode/".$PNG_WEB_DIR."/".$solo_nombre_archivo, "../" );

        //--------En esta parte trabajamos el nombre------------------------------
        echo "<div style='font-family: tahoma; font-size: 18px; margin-top: 105px; margin-bottom: 10px;'><CENTER><B>";
        echo $obj_nucleo->retornar_dato_tabla( "num_doc", $_REQUEST[ 'data' ], " nombres ", "nombres", "tb_personas", "../"  )." ".$obj_nucleo->retornar_dato_tabla( "num_doc", $_REQUEST[ 'data' ], " apellidos ", "apellidos", "tb_personas", "../"  )."<br><br><br>";
        echo $obj_nucleo->retornar_dato_tabla( "num_doc", $_REQUEST[ 'data' ], " num_doc ", "num_doc", "tb_personas", "../"  );
        echo "</B></CENTER></div>";

    }else{    
    
            //default data
            echo 'You can provide data in GET parameter: <a href="?data=like_that">like that</a><hr/>';    
            QRcode::png('PHP QR Code :)', $filename, $errorCorrectionLevel, $matrixPointSize, 2);    
        
        }
      

    echo "<div style='margin-left: 10px; margin-top: 200px; float: left;'>";
    echo "<IMG SRC='../imagenes/espacio.JPG'>";
    echo "</div>";

    //--------En esta parte trabajamos la imagen------------------------------
    echo "<div style='margin-left: 300px; margin-top: 0px; float: left;'>";

    //display generated file
    echo '<br><br><br><img src="'.$PNG_WEB_DIR.basename($filename).'" width="65%" />';  

    echo "</div>";

    echo "</div>"; 
    //----------------------------------------------fin impresion----------------------------------------

    echo "<br><br><br>";
    echo "<br><br></div><a href=\"#\" onclick=\"printInfo(this)\">Imprimir</a>";

    //config form
    /*echo '<form action="index.php" method="post">
        Data:&nbsp;<input name="data" value="'.(isset($_REQUEST['data'])?htmlspecialchars($_REQUEST['data']):'PHP QR Code :)').'" />&nbsp;
        ECC:&nbsp;<select name="level">
            <option value="L"'.(($errorCorrectionLevel=='L')?' selected':'').'>L - smallest</option>
            <option value="M"'.(($errorCorrectionLevel=='M')?' selected':'').'>M</option>
            <option value="Q"'.(($errorCorrectionLevel=='Q')?' selected':'').'>Q</option>
            <option value="H"'.(($errorCorrectionLevel=='H')?' selected':'').'>H - best</option>
        </select>&nbsp;
        Size:&nbsp;<select name="size">';
        
    for($i=1;$i<=10;$i++)
        echo '<option value="'.$i.'"'.(($matrixPointSize==$i)?' selected':'').'>'.$i.'</option>';
        
    echo '</select>&nbsp;
        <input type="submit" value="GENERATE"></form><hr/>';*/
        
    // benchmark
    //QRtools::timeBenchmark();    

?>

<SCRIPT>

    function printInfo(ele) 
    {
        var openWindow = window.open("", "title", "attributes");
        openWindow.document.write(ele.previousSibling.innerHTML);
        openWindow.document.close();
        openWindow.focus();
        openWindow.print();
        openWindow.close();
    }

</SCRIPT>