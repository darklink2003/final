<?php

	include( "config.php" );
	include( "Datos.php" );
		
	$conexion = mysqli_connect( $servidor, $usuario, $clave, $bd );
	$resultadoo= $conexion->query( Datos::sql_reporte_encuestados() );
		
    //echo $sql;
	
	if($resultadoo->num_rows > 0 )
	{						
		date_default_timezone_set('America/Mexico_City'); 

		if (PHP_SAPI == 'cli') die('Este archivo solo se puede ver desde un navegador web');

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

		$tituloReporte = "Registro de personas";
		$titulosColumnas = array('Número', 'Fecha registro', 'Tipo', 'Documento', 'Nombres', 'Apellidos', 'Encuesta', 'Preguntas', 'Respuestas');
		
		$objPHPExcel->setActiveSheetIndex(0)
        		    ->mergeCells('A1:F1');
						
		// Se agregan los titulos del reporte
		$objPHPExcel->setActiveSheetIndex(0)
					->setCellValue('A1',  $tituloReporte)
        		    ->setCellValue('A3',  $titulosColumnas[0])
		            ->setCellValue('B3',  $titulosColumnas[1])
        		    ->setCellValue('C3',  $titulosColumnas[2])
            		->setCellValue('D3',  $titulosColumnas[3])
            		->setCellValue('E3',  $titulosColumnas[4])
            		->setCellValue('F3',  $titulosColumnas[5])
                    ->setCellValue('G3',  $titulosColumnas[6])
                    ->setCellValue('H3',  $titulosColumnas[7])
					->setCellValue('I3',  $titulosColumnas[8]);
		
		//Se agregan los datos de los alumnos
		$i = 4;
		while ($fila = $resultadoo->fetch_array())
		{
            $objPHPExcel->setActiveSheetIndex(0)
                    ->setCellValue('A'.$i,  $i-3)
                    ->setCellValue('B'.$i,  $fila['fecha_registro'])
                    ->setCellValue('C'.$i,  $fila['desc_tipo_doc'])
                    ->setCellValue('D'.$i,  utf8_encode( $fila['num_doc']) )
                    ->setCellValue('E'.$i,  utf8_encode( $fila['nombres']) )
                    ->setCellValue('F'.$i,  utf8_encode( $fila['apellidos']) )
                    ->setCellValue('G'.$i,  $fila['titulo_encuesta'])
                    ->setCellValue('H'.$i,  utf8_encode( $fila['texto_pregunta'] ))
					->setCellValue('I'.$i,  utf8_encode( $fila['texto_respuesta'] ));
                    $i=$i + 1;
        }
		
		$estiloTituloReporte = array
		(
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
        );

		$estiloTituloColumnas = array
		(
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


            );
			
		$estiloInformacion = new PHPExcel_Style();
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
        ));
		
		$objPHPExcel->getActiveSheet()->getStyle('A1:K1')->applyFromArray($estiloTituloReporte);
		$objPHPExcel->getActiveSheet()->getStyle('A3:K3')->applyFromArray($estiloTituloColumnas);		
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
		header('Content-Disposition: attachment;filename="Reporte registrados encuestados.xls"');
		header('Cache-Control: max-age=0');

		$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
		$objWriter->save('php://output');
		exit;
		
	}else{
			print_r('No hay resultados para mostrar');
		}
?>