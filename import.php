<?php
header("content_type:text/html;charset=utf8");
 /** 引入需要的类库*/
require_once 'Classes\phpexcel.php'; 
require_once 'Classes\PHPExcel\IOFactory.php';
require_once 'Classes\PHPExcel\Reader\Excel5.php'; 

//数据库连接导入数据库里面
 $link = mysqli_connect('localhost','root','','test');
 mysqli_set_charset($link,"utf8");//不写这句话的话会造成乱码
 if(!$link){
	 echo "数据库连接失败"; 
	 exit;
 }
 
//读excel表中内容生成对应数组
$objReader = PHPExcel_IOFactory::createReader('Excel2007');
$objPHPExcel = $objReader->load('shiyan.xlsx'); 

//读取csv文档内容
// $objReader = new PHPExcel_Reader_CSV();
// $objPHPExcel = $objReader->load('D.csv'); 

$sheet = $objPHPExcel->getSheet(0); 
$highestRow = $sheet->getHighestRow(); // 取得总行数 
$highestColumn = $sheet->getHighestColumn(); // 取得总列数

//获取文档中的值，存入数组中
$arr_result=array();
for($j=1;$j<=$highestRow;$j++)
 { 
    for($k='A';$k<= $highestColumn;$k++)
    { 
     //读取单元格
     array_push($arr_result,($objPHPExcel->getActiveSheet()->getCell("$k$j")->getValue()));
    }
 }
 
//数组转换成字符串，方便直接插入数据库中
$str = '';
 foreach($arr_result as $item){
	$str.=$item.',';
} 
//print_r($str);die;
for($j=2;$j<=$highestRow;$j++)
{
	$a = $objPHPExcel->getActiveSheet()->getCell("A".$j)->getValue();//获取A列的值
	$b = $objPHPExcel->getActiveSheet()->getCell("B".$j)->getValue();//获取B列的值
	$c = $objPHPExcel->getActiveSheet()->getCell("C".$j)->getValue();
	$d = $objPHPExcel->getActiveSheet()->getCell("D".$j)->getValue();
	$e = $objPHPExcel->getActiveSheet()->getCell("E".$j)->getValue();
	$f = $objPHPExcel->getActiveSheet()->getCell("F".$j)->getValue();
	$g = $objPHPExcel->getActiveSheet()->getCell("G".$j)->getValue();
	$h = $objPHPExcel->getActiveSheet()->getCell("H".$j)->getValue();
	$i = $objPHPExcel->getActiveSheet()->getCell("I".$j)->getValue();
	$wj = $objPHPExcel->getActiveSheet()->getCell("J".$j)->getValue();
	$k = $objPHPExcel->getActiveSheet()->getCell("K".$j)->getValue();
	$l = $objPHPExcel->getActiveSheet()->getCell("L".$j)->getValue();
	$id = $j;
	
	// $e = $objPHPExcel->getActiveSheet()->getCell("E".$j)->getValue();
	// $f = $objPHPExcel->getActiveSheet()->getCell("F".$j)->getValue();
	//$sql = "INSERT INTO `kebiao` VALUES ('".$id."','".$a."','".$b."','".$c."','".$d."','".$e."','".$f."','".$g."','".$h."','".$i."','".$wj."','".$k."','".$l."')";
	$sql = "INSERT INTO `kebiao` VALUES (null,'".$a."','".$b."','".$c."','".$d."','".$e."','".$f."','".$g."','".$h."','".$i."','".$wj."','".$k."','".$l."')";
//print_r($sql);die;
	 //mysqli_query($link,$sql);
	 //mysqli_query($link,'set names utf-8');
	if(mysqli_query($link,$sql)){
		echo "成功";
	}
	else{
		echo "导入数据失败";
		echo mysqli_errno($link);
	}

}

?>