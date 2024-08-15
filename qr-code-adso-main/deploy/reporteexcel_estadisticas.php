<?php
//Modificado Edwar Cruz 13/10/2016
require_once 'nucleo.php';
$obj_nucleo = new nucleo();

require_once 'nucleo_ec.php';
$obj_nucleoo = new nucleoo();

include( "config.php" ); //20191127 

function conteo_genero($campo, $condicion)
{  
 include( "config.php" ); //20191127 
 
 $sql  = " SELECT COUNT( $campo ) AS conteo ";//seleccione el conteo del x campo y guardelo en la variable conteo
 $sql .= " FROM tb_personas t1";//de la tabla personas alias t1
 $sql .= " WHERE t1.$campo = '$condicion' ";//donde el campo sea = a la condicion
 
 /*$sql  = " SELECT t4.fecha_registro, t5.num_doc, t5.nombres, t5.apellidos, t1.titulo_encuesta, t2.texto_pregunta, t3.texto_respuesta ";
 $sql .= " FROM tb_encuestas t1, tb_preguntas t2, tb_posibles_respuestas t3, tb_personas_respuestas t4, tb_personas t5 ";
 $sql .= " WHERE t1.id_encuesta = t2.id_encuesta ";
 $sql .= " AND t2.id_pregunta = t3.id_pregunta ";
 $sql .= " AND t3.id_posible_respuesta = t4.id_posible_respuesta ";
 $sql .= " AND t4.num_doc = t5.num_doc ";
 $sql .= " ORDER BY t4.fecha_registro DESC, t4.num_doc, t2.id_pregunta, t3.id_posible_respuesta, t3.texto_respuesta; ";*/

 $conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );//la conexion a la bd
 $resultado2= $conexion->query($sql);//trae el resultado
 
 $conte = mysqli_fetch_assoc($resultado2); //se obtiene el resultado en un  variable 
 $conteo=$conte['conteo'];
 return ($conteo);
}
 
    $conexion = new mysqli( $servidor, $usuario, $clave, $bd, 3306);
if (mysqli_connect_errno()) {
   printf("La conexión con el servidor de base de datos falló: %s\n", mysqli_connect_error());
   exit();
	}
	$consulta= "SELECT  * FROM tb_personas";
	$resultado = $conexion->query($consulta);
	if($resultado->num_rows > 0 ){
						
		date_default_timezone_set('America/Mexico_City'); 

		if (PHP_SAPI == 'cli')
			die('Este archivo solo se puede ver desde un navegador web');

		/** Se agrega la libreria PHPExcel */
		require_once 'lib/PHPExcel/PHPExcel.php';

		// Se crea el objeto PHPExcel
		$objPHPExcel = new PHPExcel();

		// Se asignan las propiedades del libro
		$objPHPExcel->getProperties()->setCreator("Codedrinks") //Autor
							 ->setLastModifiedBy("Codedrinks") //Ultimo usuario que lo modificó
							 ->setTitle("Reporte Excel con PHP y MySQL")
							 ->setSubject("Reporte Excel con PHP y MySQL")
							 ->setDescription("Reporte de alumnos")
							 ->setKeywords("reporte alumnos carreras")
							 ->setCategory("Reporte excel");

		$tituloReporte = "Estadisticas";
        $sutituloReporte = "Registro";
		$titulosColumnas = array('Personas Registradas', 'Mayores de edad', 'Menores de edad', 'Hombres','Mujeres','Visitas','Personas encuestadas','Preguntas Respondidas','Registrados por día:');
		
		$objPHPExcel->setActiveSheetIndex(0)
        		    ->mergeCells('A1:F1')
                    ->mergeCells('A4:B4')
                    ->mergeCells('E5:F5');
						
		// Se agregan los titulos del reporte
		$objPHPExcel->setActiveSheetIndex(0)
					->setCellValue('A1',  $tituloReporte)
                    ->setCellValue('A4',  $sutituloReporte)
        		    ->setCellValue('A5',  $titulosColumnas[0])
		            ->setCellValue('A6',  $titulosColumnas[1])
        		    ->setCellValue('A7',  $titulosColumnas[2])
            		->setCellValue('A8',  $titulosColumnas[3])
            		->setCellValue('A9',  $titulosColumnas[4])
            		->setCellValue('A10',  $titulosColumnas[5])
            		->setCellValue('A11',  $titulosColumnas[6])
            		->setCellValue('A12',  $titulosColumnas[7])
                    ->setCellValue('E5',  $titulosColumnas[8]);
          		
		
		//Se agregan los datos de los alumnos
        $objPHPExcel->setActiveSheetIndex(0)
                ->setCellValue('B5',  $obj_nucleo->retornar_dato_tabla( "1", "1", "COUNT( * )", "conteo", "tb_personas" ))
                ->setCellValue('B'.'6',  conteo_genero('cod_tipo_doc','1'))
                ->setCellValue('B'.'7',  conteo_genero('cod_tipo_doc','2'))
                ->setCellValue('B'.'8',  conteo_genero('cod_genero','14'))
                ->setCellValue('B'.'9',  conteo_genero('cod_genero','15'))
                ->setCellValue('B10',    $obj_nucleo->retornar_dato_tabla( "1", "1", "COUNT( * )", "conteo", "tb_personas_registros" ))
                ->setCellValue('B11',    $obj_nucleo->retornar_dato_tabla( "1", "1", "COUNT( DISTINCT num_doc )", "conteo", "tb_personas_respuestas" ))
                ->setCellValue('B12',    $obj_nucleo->retornar_dato_tabla( "1", "1", "COUNT( * )", "conteo", "tb_personas_respuestas" ));
                
                $sql  = " SELECT CONCAT( DAY( fecha_registro ), '/', MONTH( fecha_registro ), '/', YEAR( fecha_registro )  ) AS fecha, COUNT( * ) AS conteo ";
                $sql .= " FROM tb_personas ";
                $sql .= " GROUP BY fecha ";
                $sql .= " ORDER BY fecha DESC ";               
                $conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
                $resultadooo = $conexion->query( $sql );
                $r=$resultadooo;
                
        $i = 6;
        while ($fila = $resultadooo->fetch_array()) {
            $objPHPExcel->setActiveSheetIndex(0)
                ->setCellValue('E'.$i, $fila['fecha'])
                ->setCellValue('F'.$i, $fila['conteo']);
                    $i=$i + 1;
        }
		
		/*$estiloTituloReporte = array(
        	'font' => array(
	        	'name'      => 'Verdana',
    	        'bold'      => true,
        	    'italic'    => false,
                'strike'    => false,
               	'size' =>16,
	            	'color'     => array(
    	            	'rgb' => '0B7C5A'
        	       	)
            ),
	        'fill' => array(
				'type'	=> PHPExcel_Style_Fill::FILL_SOLID,
				
			),
            'borders' => array(
               	'allborders' => array(
                	'style' => PHPExcel_Style_Border::BORDER_NONE                    
               	)
            ), 
            'alignment' =>  array(
        			'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
        			'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,
        			'rotation'   => 0,
        			'wrap'          => TRUE
    		)
        );*/

		/*$estiloTituloColumnas = array(
            'font' => array(
                'name'      => 'Arial',
                'bold'      => true,                          
                'color'     => array(
                    'rgb' => '0B7C5A'
                )
            ),
            'fill' 	=> array(
				'type'		=> PHPExcel_Style_Fill::FILL_GRADIENT_LINEAR,
				'rotation'   => 90,
        		'startcolor' => array(
            		'rgb' => ''
        		),
        		'endcolor'   => array(
            		'argb' => ''
        		)
			),
            'borders' => array(
            	'top'     => array(
                    'style' => PHPExcel_Style_Border::BORDER_MEDIUM ,
                    'color' => array(
                        'rgb' => ''
                    )
                ),
                'bottom'     => array(
                    'style' => PHPExcel_Style_Border::BORDER_MEDIUM ,
                    'color' => array(
                        'rgb' => ''
                    )
                )
            ),

            'borders' => array(
                'top'     => array(
                    'style' => PHPExcel_Style_Border::BORDER_NONE ,
                    'color' => array(
                        'rgb' => ''
                    )
                ),
                'bottom'     => array(
                    'style' => PHPExcel_Style_Border::BORDER_NONE ,
                    'color' => array(
                        'rgb' => ''
                    )
                )
            ),

         
			'alignment' =>  array(
        			'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
        			'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,
        			'wrap'          => TRUE
    		)


            );*/
			
		/*$estiloInformacion = new PHPExcel_Style();
		$estiloInformacion->applyFromArray(
			array(
           		'font' => array(
               	'name'      => 'Arial',               
               	'color'     => array(
                   	'rgb' => ''
               	)
           	),
           	'fill' 	=> array(
				'type'		=> PHPExcel_Style_Fill::FILL_SOLID,
				'color'		=> array('argb' => '')
			),
           	'borders' => array(
               	'left'     => array(
                   	'style' => PHPExcel_Style_Border::BORDER_THIN ,
	                'color' => array(
    	            	'rgb' => ''
                   	)
               	)             
           	)
        ));*/
		 
		//$objPHPExcel->getActiveSheet()->getStyle('A1:B1')->applyFromArray($estiloTituloReporte); //20201005
		//$objPHPExcel->getActiveSheet()->getStyle('A4:K4')->applyFromArray($estiloTituloColumnas); //20201005		
		//$objPHPExcel->getActiveSheet()->setSharedStyle($estiloInformacion, "A4:k".($i-1)); //esto es para que queden negros los campos
				
		for($i = 'A'; $i <= 'K'; $i++){
			$objPHPExcel->setActiveSheetIndex(0)			
				->getColumnDimension($i)->setAutoSize(TRUE);
		}
		
		// Se asigna el nombre a la hoja
		$objPHPExcel->getActiveSheet()->setTitle('tb_personas');

		// Se activa la hoja para que sea la que se muestre cuando el archivo se abre
		$objPHPExcel->setActiveSheetIndex(0);
		// Inmovilizar paneles 
		//$objPHPExcel->getActiveSheet(0)->freezePane('A4');
		//$objPHPExcel->getActiveSheet(0)->freezePaneByColumnAndRow(0,11);

		// Se manda el archivo al navegador web, con el nombre que se indica (Excel2007)
		header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		header('Content-Disposition: attachment;filename="Estadisticas.xls"');
		header('Cache-Control: max-age=0');

		$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
		$objWriter->save('php://output');
		exit;
		
	}
	else{
		print_r('No hay resultados para mostrar');
	}
?>