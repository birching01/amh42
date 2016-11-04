<?php
class MyModule extends AmysqlController
{
	function IndexAction()
	{
		$this -> title = 'AMH - MyModule';	// 面板模块标题
		$this -> _class('Functions');		// 载入面板函数
		Functions::CheckLogin();		// 面板登录检查函数
	
		$this -> name = 'MyModule-1.0';		// 赋值一$name变量
		$this -> _view('MyModule_html');	// 加载模块视图模块文件
	}
}
?>
