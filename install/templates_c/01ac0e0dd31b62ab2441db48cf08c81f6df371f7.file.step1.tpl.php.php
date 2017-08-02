<?php /* Smarty version Smarty-3.1.10, created on 2015-06-01 16:51:54
         compiled from "./templates/step1.tpl.php" */ ?>
<?php /*%%SmartyHeaderCode:11138115555015be4c13b42-62248814%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '01ac0e0dd31b62ab2441db48cf08c81f6df371f7' => 
    array (
      0 => './templates/step1.tpl.php',
      1 => 1432278435,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11138115555015be4c13b42-62248814',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.10',
  'unifunc' => 'content_55015be4c49573_56633739',
  'variables' => 
  array (
    'licenset' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55015be4c49573_56633739')) {function content_55015be4c49573_56633739($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("header.tpl.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

	<div class="body_box">
        <div class="main_box">
            <div class="hd">
            	<div class="bz a1"><div class="jj_bg"></div></div>
            </div>
            <div class="ct">
            	<div class="bg_t"></div>
                <div class="clr">
                    <div class="l"></div>
                    <div class="ct_box">
                    <div class="nr">
					<?php echo $_smarty_tpl->tpl_vars['licenset']->value;?>
 
					</div>
                    </div>
                </div>
                <div class="bg_b"></div>
            </div>
            <div class="btn_box"><a href="javascript:void(0);" class="is_btn" onclick="$('#install').submit();return false;">开始安装</a></div>
			<form id="install" action="index.php?" method="get">
			<input type="hidden" name="step" value="2">
			</form>
        </div>
    </div>
</body>
</html>
<?php }} ?>