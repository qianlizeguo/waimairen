<?php  
$alipay_config['partner']		= 'waimairen'; 
$alipay_config['key']			= 'waimairen'; 
$alipay_config['private_key_path']	= 'D:\Appserv\www\www.wmrnew.com/plug/pay/alimobile/key/rsa_private_key.pem';
$alipay_config['ali_public_key_path']= 'D:\Appserv\www\www.wmrnew.com/plug/pay/alimobile/key/alipay_public_key.pem';
$alipay_config['sign_type']    = '0001';
$alipay_config['input_charset']= 'utf-8'; 
$alipay_config['cacert']    = getcwd().'\\cacert.pem';
$alipay_config['transport']    = 'http';
$alipay_config['notify_url'] = 'http://192.168.0.117/plug/pay/alimobile/notify_url.php';
$alipay_config['return_url'] = 'http://192.168.0.117/plug/pay/alimobile/call_back_url.php';
$alipay_config['error_url'] = 'http://192.168.0.117/plug/pay/alimobile/error.php';
$alipay_config['seller_email'] = 'waimairen@qq.com';
?>