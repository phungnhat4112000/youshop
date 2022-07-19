<?php 
	//kết nối csdl
	class Connection{
		//hàm kết nối csdl -> kiểu biến này là biến object
		public static function getInstance(){
			//$db = new PDO("mysql:host=localhost;dbname=youshopp","root","");
			// $db = new PDO("mysql:host=sql213.byethost17.com;dbname=b17_30928847_youshopp","b17_30928847","pmnhat2k");
			// 
			// 
			$db = new PDO("mysql:host=localhost;dbname=youshopp","root","");
			//lấy dữ liệu theo kiểu unicode
			$db->exec("set names utf8");
			//lấy kết quả trả về theo kiểu object
			$db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,PDO::FETCH_OBJ);
			
			return $db;

		}
	}

 ?>