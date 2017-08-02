<?php
class method   extends areaadminbaseclass
{ 
	 
	 function index(){
	    
	   $mftime = strtotime(date('Y-m',time()));
		 $metime = time();//strtotime(date('Y-m',time()).'-'.date('t',time()).' 23:59:59 ');//,"lasttime"=>mktime(23,59,59,$m,$d,$y)); 
		 $dftime = strtotime(date('Y-m-d',time())); 
		 $detime = time();//今天订单将配送时间做为当前时间 
     // 今日总订单	
     $tjdata['dayallorder'] = $this->mysql->counts("select * from ".Mysite::$app->config['tablepre']."order  where posttime > $dftime and posttime < $detime  ");
     //今日待审核订单	  
	   $tjdata['dayworder'] = $this->mysql->counts("select * from ".Mysite::$app->config['tablepre']."order  where posttime > $dftime and posttime < $detime  and status = 0");
     /// 今日已审核订单
     $tjdata['dayporder'] = $this->mysql->counts("select * from ".Mysite::$app->config['tablepre']."order  where posttime > $dftime and posttime < $detime  and status > 0 and status < 4");
     // 本月已完成订单	 
     $tjdata['monthallorder'] = $this->mysql->counts("select * from ".Mysite::$app->config['tablepre']."order  where posttime > $mftime and posttime < $metime  and status = 3");//
     /// 已完成订单总量 
	   $tjdata['allorder'] = $this->mysql->counts("select * from ".Mysite::$app->config['tablepre']."order  where  status = 3"); 
    //已上线商家
    $tjdata['onlineshop'] = $this->mysql->counts("select * from ".Mysite::$app->config['tablepre']."shop  where  is_pass = 1");
    //待审核商家
     $tjdata['wshop'] = $this->mysql->counts("select * from ".Mysite::$app->config['tablepre']."shop  where  is_pass = 0");
    //普通会员
      $tjdata['pmember'] = $this->mysql->counts("select * from ".Mysite::$app->config['tablepre']."member ");
    //商城订单
      $tjdata['market'] = $this->mysql->counts("select * from ".Mysite::$app->config['tablepre']."order where shopid=0 ");
    //商品数量
      $tjdata['marketg'] = $this->mysql->counts("select * from ".Mysite::$app->config['tablepre']."goods where shopid=0 ");
      $data['tjdata'] = $tjdata; 
	    $data['serverurl'] = Mysite::$app->config['serverurl'];  
	    Mysite::$app->setdata($data);  
	 }
} 
?>