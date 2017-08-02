<?php
class method   extends adminbaseclass
{

	 function  asklist(){
	    $this->asktype();
	   $searchvalue = IReq::get('searchvalue');
	   $typeid = intval(IReq::get('typeid'));
	   $data['typeid'] = $typeid;
	   $data['searchvalue'] = $searchvalue;
	   $data['where'] = '';

	   Mysite::$app->setdata($data);
	 }
	 
	 
	 
	 function  shopmsglist(){
	    
	   $data['where'] = '';

	   Mysite::$app->setdata($data);
	 }
	 
	   function shenhaisj(){ 
	   $id = IReq::get('id');
		if(empty($id)) $this->message('empty_ping');
		$checkinfo = $this->mysql->select_one("select * from ".Mysite::$app->config['tablepre']."messages where id='".$id."'  ");  
		if(empty($checkinfo)) $this->message('empty_ping');
		$data['is_pass'] = $checkinfo['is_pass'] == 1?0:1;
		$this->mysql->update(Mysite::$app->config['tablepre'].'messages',$data,"id='".$id."'");  
		$this->success('success');
	}
 function delsjmsg(){

     $id = IFilter::act(IReq::get('id'));
		 if(empty($id))  $this->message('empty_ask');
		 $ids = is_array($id)? join(',',$id):$id;
		
		 $where = " id in($ids)";
	   $this->mysql->delete(Mysite::$app->config['tablepre'].'messages',$where);
	   $this->success('success');
   }
   
	 
	 
	 
	 function backask()
	 {
		  $id = intval(IReq::get('askbackid'));
	   	if(empty($id)) $this->message('empty_ask');
	   	$checkinfo = $this->mysql->select_one("select * from ".Mysite::$app->config['tablepre']."ask where id='".$id."'  ");
	   	if(empty($checkinfo)) $this->message('ask_empty');
		  if(!empty($checkinfo['replycontent']))  $this->message('ask_isreplay');
		  $where = " id='".$id."' ";
	   	$data['replycontent'] = IFilter::act(IReq::get('askback'));
	  	if(empty($data['replycontent'])) $this->message('ask_emptyreplay');
		  $data['replytime'] = time();
		  $this->mysql->update(Mysite::$app->config['tablepre'].'ask',$data,$where);
		  $this->success('success');
   }
   function delask(){

     $id = IFilter::act(IReq::get('id'));
		 if(empty($id))  $this->message('empty_ask');
		 $ids = is_array($id)? join(',',$id):$id;
		 $adminuid = ICookie::get('adminuid');
		 $where = " id in($ids)";
	   $this->mysql->delete(Mysite::$app->config['tablepre'].'ask',$where);
	   $this->success('success');
   }
	 function asktype(){
	 	  $data['typelist'] =array('0'=>'店铺留言','1'=>'建议','2'=>'问题','3'=>'催单','4'=>'投诉申告','5'=>'其他');
	   	Mysite::$app->setdata($data);
	 }
	 function savepme(){
	 	$message = trim(IReq::get('message'));
		if(empty($message)) $this->message('ask_emptyperreplay');
		$data['usercontent'] = $message;
		$data['uid'] = 0;
		$data['backusername'] = '网站客服';
		$data['userimg'] = '';
		$data['creattime'] = time();
		$data['backtime'] = 0;
		$data['backuid'] = 0;
		$this->mysql->insert(Mysite::$app->config['tablepre'].'pmes',$data);  //写消息表
		$this->success('success');
	 }
	 function delpmes(){
	   	$id = IReq::get('id');
		  if(empty($id)) $this->json('ask_emptyper');
	  	$id = is_array($id)?$id:array($id);
	  	$tempids = join(',',$id);
	  	if(empty($tempids)) $this->json('数据合并出错');
	  	$this->mysql->delete(Mysite::$app->config['tablepre'].'pmes'," id in($tempids) ");
			$this->success('success');
	 }
	 function backpme(){
	 	$id = intval(IReq::get('id'));
		if(empty($id)) $this->message('ask_emptyper');
		$message = trim(IReq::get('message'));
		if(empty($message)) $this->message('ask_emptyperreplay');
		$data['backcontent'] 	= $message;
		$data['backuid'] = '';
		$data['backimg']	='';
		$data['backtime'] = time();
		$this->mysql->update(Mysite::$app->config['tablepre'].'pmes',$data,"id='".$id."'");
		$this->success('success');
   }
}



?>