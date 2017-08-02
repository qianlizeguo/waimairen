<?php
class method   extends areaadminbaseclass
{
	function memberlistps(){
	   
	 	 $this->checkadminlogin();
	 	 $data['username'] =  trim(IReq::get('username'));
	   $data['email'] =  trim(IReq::get('email'));
	 	 $data['groupid'] = 2;
	 	 $data['phone'] =  trim(IReq::get('phone'));
	 	 //构造查询条件
	 	 $where = '';
	 	 $where =  $this->sqllink($where,'username',$data['username'],'=');
	 	 $where =  $this->sqllink($where,'email',$data['email'],'=');
	 	 $where =  $this->sqllink($where,'group',$data['groupid'],'=');
	 	 $where =  $this->sqllink($where,'phone',$data['phone'],'=');
	 	 $where =  $this->sqllink($where,'admin_id',$this->admin['uid'],'=');
	 	 $data['where'] = $where;
	 	 
	 	 Mysite::$app->setdata($data);  
	 }
	  
	 function setps(){
	 	$this->checkadminlogin();
		$uid =  intval(IReq::get('uid'));
	 	  if(empty($uid))
	 	  {
	 	  	 echo '配送员不存在';
	 	  	 exit;
	 	   }
	 	  $psyinfo= $this->mysql->select_one("select * from ".Mysite::$app->config['tablepre']."member where uid=".$uid."  and   `group` =2");
	 	  if(empty($psyinfo))
	 	  {
	 	     echo '配送员不存在';
	 	  	 exit;
	 	  } 
	    $areainfo = $this->mysql->getarr("select * from ".Mysite::$app->config['tablepre']."area   order by orderid asc"); 
		$parentids = array();
		foreach($areainfo as $key=>$value){
		  $parentids[] = $value['parent_id'];
		} 
		 $parentids = array_unique($parentids);
		 $data['parent_ids'] = $parentids;
	 	 $this->getgodigui($areainfo,0,0);
	 	 $data['arealist'] = $this->digui;  
	 	 //店铺可配送区域
	 	 $choicelist = $this->mysql->getarr("select * from ".Mysite::$app->config['tablepre']."areapsy where psyuid = ".$uid."   order by areaid asc limit 0,1000");
	 	 $temp = array();
	 	 foreach($choicelist as $key=>$value){
	 	   $temp[]= $value['areaid'];
	 	 }
	 	 $data['choiceid']  = $temp;  
	 	 $data['psyinfo'] = $psyinfo;
	   Mysite::$app->setdata($data);
	 }
	 function getgodigui($arraylist,$nowid,$nowkey){
	 	   if(count($arraylist) > 0){
	 	      foreach($arraylist as $key=>$value){
	 	         if($value['parent_id'] == $nowid){
	 	             $value['space'] = $nowkey;
	 	             $donextkey = $nowkey+1;
	 	             $donextid = $value['id'];
	 	             $this->digui[] = $value;
	 	              $this->getgodigui($arraylist,$donextid,$donextkey);
	 	         }
	 	      }

	 	   }
	 }
	 function savesetps(){
	 	  $this->checkadminlogin(); 
	 	 $uid =  intval(IReq::get('uid'));
		  if(empty($uid)){ 
			 echo "<script>parent.uploaderror('配送员不存在');</script>";
		 	 exit; 
		  }
		 $psyinfo= $this->mysql->select_one("select * from ".Mysite::$app->config['tablepre']."member where uid=".$uid."  and   `group` =2");
	 	  if(empty($psyinfo))
	 	  {
	 	     	echo "<script>parent.uploaderror('配送员不存在');</script>";
		 	 exit; 
	 	  }  
	   $areaids = IReq::get('areaids');
	   
	   if(is_array($areaids)){ 
	 	   //首先清理数据存在的区域数据
	 	   $this->mysql->delete(Mysite::$app->config['tablepre']."areapsy"," psyuid='".$uid."'  "); 
	 	   $checkareais = $areaids;
	 	   while(count($checkareais) > 0){
	 	   	   $checkarealist = $this->mysql->getarr("select * from ".Mysite::$app->config['tablepre']."area where id in(".join(',',$checkareais).")    order by id desc limit 0,1000");
	 	   	   $checkareais = array();
	 	   	   foreach($checkarealist as $key=>$value){
	 	   	   	  $areadata['psyuid'] = $uid;
	 	   	   	  $areadata['areaid'] = $value['id']; 
	 	   	      $this->mysql->insert(Mysite::$app->config['tablepre']."areapsy",$areadata);
	 	   	      if($value['parent_id'] > 0){
	 	   	        $checkareais[] = $value['parent_id'];
	 	   	      }
	 	   	   }
	 	       $checkareais = array_unique($checkareais);
	 	   } 
  	  }else{ 
  		    echo "<script>parent.uploaderror('配送区域未选择');</script>";
		 	    exit;  
  	  } 
	   echo "<script>parent.uploadsucess('');</script>";
		 exit; 
	 }
	 function psymap(){
	 	   $searchvalue = IReq::get('searchvalue');
		$starttime = trim(IReq::get('starttime'));
		$endtime = trim(IReq::get('endtime'));
		$admin_id = intval(IReq::get('admin_id'));
		$newlink = '';
		$where= ' where `group`=2';
		$where2 = '';
		$data['searchvalue'] = '';
		if(!empty($searchvalue))
		{
			   $data['searchvalue'] = $searchvalue;
	   	   $where .= ' and username = \''.$searchvalue.'\' ';
	   	   $newlink .= '/searchvalue/'.$searchvalue;
		}
		$data['starttime'] = '';
		if(!empty($starttime))
		{
			 $data['starttime'] = $starttime;
			 $where2 .= ' and  posttime > '.strtotime($starttime.' 00:00:01').' ';
	   	 $newlink .= '/starttime/'.$starttime;
		}
		$data['endtime'] = '';
		if(!empty($endtime))
		{
			 $data['endtime'] = $endtime;
			 $where2 .= ' and  posttime < '.strtotime($endtime.' 23:59:59').' ';
	   	 $newlink .= '/endtime/'.$endtime;
		}
		 
			$where .= ' and admin_id = \''.$this->admin['uid'].'\' ';
		 
		$data['admin_id'] = $admin_id;
		$link = IUrl::creatUrl('areaadminpage/psuser/module/outpstjorder'.$newlink);
	  $data['outlink'] =IUrl::creatUrl('areaadminpage/psuser/module/outpstjorder/outtype/query'.$newlink);
	  $data['outlinkch'] =IUrl::creatUrl('areaadminpage/psuser/module/outpstjorder'.$newlink);
		$pageinfo = new page();
		$pageinfo->setpage(IReq::get('page'));
		 
		$memberlist = $this->mysql->getarr("select * from ".Mysite::$app->config['tablepre']."member ".$where."   order by uid asc  limit ".$pageinfo->startnum().", ".$pageinfo->getsize()."");
		 
		$list = array();
		if(is_array($memberlist))
		{
	     foreach($memberlist as $key=>$value)
	     {
	     	  //判断店铺配送类型
	     	   

	     	  // $value['sendtype'] = empty($sendtype)?'网站配送':'自送';
	         $shoptj=  $this->mysql->select_one("select  count(id) as shuliang,sum(cxcost) as cxcost,sum(yhjcost) as yhcost, sum(shopcost) as shopcost,sum(scoredown) as score, sum(shopps)as pscost, sum(bagcost) as bagcost,sum(allcost) as doallcost from ".Mysite::$app->config['tablepre']."order  where psuid = '".$value['uid']."' and paytype ='outpay' and shopcost > 0 and status = 3 ".$where2." order by id asc  limit 0,1000");
	         $line= $this->mysql->select_one("select count(id) as shuliang,sum(cxcost) as cxcost,sum(yhjcost) as yhcost,sum(shopcost) as shopcost, sum(scoredown) as score, sum(shopps)as pscost, sum(bagcost) as bagcost,sum(allcost) as doallcost from ".Mysite::$app->config['tablepre']."order  where psuid = '".$value['uid']."' and paytype !='outpay'  and paystatus =1 and shopcost > 0 and status = 3 ".$where2."   order by id asc  limit 0,1000");

	         $value['orderNum'] =  $shoptj['shuliang']+$line['shuliang'];//订单总个数
	          
	         $value['online'] = $line['doallcost'];//$line['shopcost']+$line['pscost']+$line['bagcost'] -$line['cxcost'] - $line['yhcost']-$scordedown;//在线支付总金额
	          
	         $value['unline'] = $shoptj['doallcost'];//$shoptj['shopcost']+$shoptj['pscost']+$shoptj['bagcost'] -$shoptj['cxcost'] - $shoptj['yhcost']-$scordedown; 
		       $list[] = $value;
		   }
		}

		$data['list'] =$list; 
		//print_r($data);
		$shuliang  = $this->mysql->counts("select uid from ".Mysite::$app->config['tablepre']."member ".$where."  ");
		$pageinfo->setnum($shuliang);
		$data['pagecontent'] = $pageinfo->getpagebar($link);
		Mysite::$app->setdata($data);
      
   	
   }
   function outpstjorder()
	{
		$outtype = IReq::get('outtype');
		if(!in_array($outtype,array('query','ids')))
		{
		  	header("Content-Type: text/html; charset=UTF-8");
			 echo '查询条件错误';
			 exit;
		}
		$where = '';
		$where2 = '';
		if($outtype == 'ids')
		{
			  $id = trim(IReq::get('id'));
			  if(empty($id))
			  {
			  	 header("Content-Type: text/html; charset=UTF-8");
			  	 echo '查询条件不能为空';
			  	 exit;
			  }
			   $doid = explode('-',$id);
			  $id = join(',',$doid);
			  $where .= ' where uid in('.$id.') ';

			  $searchvalue = trim(IReq::get('searchvalue'));
			  $where .= !empty($searchvalue)? ' and username = \''.$searchvalue.'\'':'';
		 //   $data['searchvalue'] = $searchvalue;
	   //	   $where .= ' where shopname = \''.$searchvalue.'\' ';

		   $starttime = trim(IReq::get('starttime'));
		   $where2 .= !empty($starttime)? ' and  posttime > '.strtotime($starttime.' 00:00:01').' ':'';

		   $endtime = trim(IReq::get('endtime'));
		   $where2 .= !empty($endtime)? ' and  posttime < '.strtotime($endtime.' 23:59:59').' ':'';

		}else{
		   $searchvalue = trim(IReq::get('searchvalue'));
		   $where .= !empty($searchvalue)? ' where username = \''.$searchvalue.'\'':'';
		 //   $data['searchvalue'] = $searchvalue;
	   //	   $where .= ' where shopname = \''.$searchvalue.'\' ';

		   $starttime = trim(IReq::get('starttime'));
		   $where2 .= !empty($starttime)? ' and  posttime > '.strtotime($starttime.' 00:00:01').' ':'';

		   $endtime = trim(IReq::get('endtime'));
		   $where2 .= !empty($endtime)? ' and  posttime < '.strtotime($endtime.' 23:59:59').' ':'';
		  
		}
		$where .= empty($where)?' where admin_id =\''.$this->admin['uid'].'\'':' and admin_id =\''.$this->admin['uid'].'\'';
		$where.= empty($where)?' where `group`=2 ':' and `group`=2 ';
	  $memberlist = $this->mysql->getarr("select * from ".Mysite::$app->config['tablepre']."member ".$where."   order by uid asc  limit 0,2000 ");
		$list = array();
		if(is_array($memberlist))
		{
	     foreach($memberlist as $key=>$value)
	     {
 
	     	   $shoptj=  $this->mysql->select_one("select  count(id) as shuliang,sum(cxcost) as cxcost,sum(yhjcost) as yhcost, sum(shopcost) as shopcost,sum(scoredown) as score, sum(shopps)as pscost, sum(bagcost) as bagcost,sum(allcost) as doallcost from ".Mysite::$app->config['tablepre']."order  where psuid = '".$value['uid']."' and paytype ='outpay' and shopcost > 0 and status = 3 ".$where2." order by id asc  limit 0,1000");
	         $line= $this->mysql->select_one("select count(id) as shuliang,sum(cxcost) as cxcost,sum(yhjcost) as yhcost,sum(shopcost) as shopcost, sum(scoredown) as score, sum(shopps)as pscost, sum(bagcost) as bagcost,sum(allcost) as doallcost from ".Mysite::$app->config['tablepre']."order  where psuid = '".$value['uid']."' and paytype !='outpay'  and paystatus =1 and shopcost > 0 and status = 3 ".$where2."   order by id asc  limit 0,1000");

	         $value['orderNum'] =  $shoptj['shuliang']+$line['shuliang'];//订单总个数
	          
	         $value['online'] = $line['doallcost'];//$line['shopcost']+$line['pscost']+$line['bagcost'] -$line['cxcost'] - $line['yhcost']-$scordedown;//在线支付总金额
	          
	         $value['unline'] = $shoptj['doallcost'];//$shoptj['shopcost']+$shoptj['pscost']+$shoptj['bagcost'] -$shoptj['cxcost'] - $shoptj['yhcost']-$scordedown; 
		       $list[] = $value;
		   }
		}
		 $outexcel = new phptoexcel();
		 $titledata = array('配送员','订单总数','线上交易金额','线下交易金额');
		 $titlelabel = array('username','orderNum','online','unline');
		// $datalist = $this->mysql->getarr("select card,card_password,cost from ".Mysite::$app->config['tablepre']."card where id > 0 ".$where."   order by id desc  limit 0,2000 ");
		 $outexcel->out($titledata,$titlelabel,$list,'','配送员结算');
	} 
	function setpsyuan(){
	 	$uid = intval(IReq::get('uid'));
	 	$admin_id = intval(IReq::get('adminid'));
	 	if(empty($uid)) $this->message('member_noexit'); 
	 	$data['admin_id'] = $admin_id;
	 	$this->mysql->update(Mysite::$app->config['tablepre'].'member',$data,"uid='".$uid."'");	  
	 	$this->success('success');
	}
	function selectps(){
   	  $orderid = intval(IReq::get('orderid'));
	 	  $data['orderinfo'] = $this->mysql->select_one("select * from ".Mysite::$app->config['tablepre']."order where id=".$orderid."");
	 	  if(!empty($data['orderinfo']['psuid'])){
	 	    echo '配送员已选择';
	 	    exit;
	 	  }
      $memberlist = $this->mysql->getarr("select *  from ".Mysite::$app->config['tablepre']."member where `group` = 2 and admin_id='".$data['orderinfo']['admin_id']."' limit 0,1000");
      $data['memberlist'] = array();
      $nowdata = strtotime(date('Y-m-d',time()));
   	 
   	 $mintime = $nowdata;
   	 $maxtime = $nowdata+86400;
   	 $where = ' where  status < 4 and posttime > '.$mintime.' and posttime < '.$maxtime;
      foreach($memberlist as $key=>$value){
        $test = $where.' and psuid='.$value['uid'];
        $value['shuliang'] = $this->mysql->counts("select *  from ".Mysite::$app->config['tablepre']."order ".$test." limit 0,1000");
        $data['memberlist'][] = $value;
      }
      Mysite::$app->setdata($data);
   }
   function selectorder(){
   	 $uid = intval(IReq::get('uid'));
   	 if(empty($uid)){
   	   echo '暂无数据';
   	   exit;
   	 }
   	 $nowdata = strtotime(date('Y-m-d',time()));
   	 
   	 $mintime = $nowdata;
   	 $maxtime = $nowdata+86400;
   	 $where = ' where psuid='.$uid.' and status < 4 and posttime > '.$mintime.' and posttime < '.$maxtime;
   	 $orderlist = $this->mysql->getarr("select *  from ".Mysite::$app->config['tablepre']."order ".$where." limit 0,1000");
   	 
   	 $htmls = '';
   	 foreach($orderlist as $key=>$value){
   	 	$htmls .='<ul><li class="shopname">'.$value['shopname'].'</li>';
   	 	$htmls .='<li class="addressa">'.$value['buyeraddress'].'</li>';
   	 	$htmls .='<li class="posttime">'.date('H:i:s',$value['posttime']).'</li></ul>';
   	 }
   	 echo $htmls;
   	 exit;
   }
   function psyposition(){ 
		$data['arealist']= $this->mysql->getarr("select * from ".Mysite::$app->config['tablepre']."area  where parent_id =0 and admin_id = '".$this->admin['uid']."' order by id asc  limit 0,2000 ");
	  Mysite::$app->setdata($data);
	}
	function ajaxpsy(){ 
	  //$this->message('xxx');
	  /***获取所有配送员定位地址*/
	  /**统计配送员信息*/
	  //xiaozu_areapsy
	  //xiaozu_locationpsy
	  //psuid	psusername
	  //http://192.168.0.109/index.php?contrller=adminpage&action=psuser&module=ajaxpsy&areaid=0&random=633&datatype=json
	  $areaid = intval(IReq::get('areaid'));
	  $where = '';
	  if(!empty($areaid)){
	  	$checkinfo = $this->mysql->select_one(" select * from ".Mysite::$app->config['tablepre']."area where id = '".$areaid."'");
	  	if(!empty($checkinfo)){
	  	  $where .= " where admin_id ='".$checkinfo['admin_id']."'";
	  	}
	    // $where = " where a.uid in (select psyuid from ".Mysite::$app->config['tablepre']."areapsy  where areaid ='".$areaid."' )";
	  }
	  //xiaozu_locationpsy
	  $datalist = $this->mysql->getarr("select a.*,b.username from ".Mysite::$app->config['tablepre']."locationpsy as a left join ".Mysite::$app->config['tablepre']."member as b on a.uid = b.uid ".$where." order by a.uid asc  limit 0,100 ");
	  $data['psylist'] = array();
	  $todatay = strtotime(date('Y-m-d',time()));
    $endtime = $todatay + 86399;
	  if(is_array($datalist)){
	    foreach($datalist as $key=>$value){
	    	$value['waitps'] = $this->mysql->counts("select id from ".Mysite::$app->config['tablepre']."order where psuid='".$value['uid']."' and status = 1 and posttime > ".$todatay." and posttime < ".$endtime."  ");
	    	$value['overps'] = $this->mysql->counts("select id from ".Mysite::$app->config['tablepre']."order where psuid='".$value['uid']."' and status > 1 and status < 4 and posttime > ".$todatay." and posttime < ".$endtime."  ");
	    	
	    	$data['psylist'][] = $value;
	    	
	    }
	  }
	  if(count($data['psylist']) < 1){
	  	  $this->message('无配送员数据');
	  }
	  $this->success($data['psylist']);
	  
	  
	}
	function getpsorder(){ 
	   $userid = intval(IReq::get('userid')); 
	   $this->setstatus();
	    $todatay = strtotime(date('Y-m-d',time()));
      $endtime = $todatay + 86399;
		  $data['orderlist'] =  $this->mysql->getarr("select * from ".Mysite::$app->config['tablepre']."order where psuid='".$userid."' and posttime > ".$todatay." and posttime < ".$endtime." ");
		 
		
	   Mysite::$app->setdata($data);
		
	}
	function setstatus(){
		   $data['buyerstatus'] = array(
		   '0'=>'待处理订单',
		   '1'=>'待发货',
		   '2'=>'订单已发货',
		   '3'=>'订单完成',
		   '4'=>'买家取消订单',
		   '5'=>'卖家取消订单'
		   );
		   $paytypelist = array('outpay'=>'货到支付','open_acout'=>'账号余额支付');
		   $paylist = $this->mysql->getarr("select * from ".Mysite::$app->config['tablepre']."paylist   order by id asc limit 0,50");
		   if(is_array($paylist)){
		     foreach($paylist as $key=>$value){
		   	    $paytypelist[$value['loginname']] = $value['logindesc'];
		     }
	     }
	     $data['shoptype'] = array(
	     '0'=>'外卖',
	     '1'=>'超市',
	     '2'=>'其他',
	     );
	     $data['ordertypearr'] = array(
		   '0'=>'网站',
		   '1'=>'网站',
		   '2'=>'电话',
		   '3'=>'微信',
		   '4'=>'APP',
		   '5'=>'手机网站',
		   '6'=>'卖家取消订单'
		   );
		   $data['backarray'] = array(
		   '0'=>'',
		   '1'=>'退款中..',
		   '2'=>'退款成功',
		   '3'=>''
		   );
	    $data['paytypearr'] = $paytypelist;
	  	Mysite::$app->setdata($data);
	}
	

}



?>