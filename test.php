<?php
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加点标注工具--高级示例</title>
<script type="text/javascript" src="http://esn.qiutao.com/js/lib/jq/jquery-1.7.1.min.js?20121210"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.3"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/MarkerTool/1.2/src/MarkerTool_min.js"></script>
<style type="text/css">
   
    #divStyle {
        width: 280px;
        height: 160px;
        border: solid 1px gray;
        display:block;
        margin: 2px; 0px;
        display:none;
    }
    #divStyle ul{
        list-style-type: none;
        padding: 2px 2px;
        margin: 2px 2px
    }
    #divStyle ul li a{
        cursor: pointer;
        margin: 2px 2px;
        width: 30px;
        height: 30px;
        display: inline-block;
        border: solid 1px #ffffff;
        text-align: center;
    }

    #divStyle ul li a:hover{
        background:none;
        border: solid 1px gray;     
    }
    
    #divStyle ul li img{
        border: none;
        background:url('http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/icon.gif');
    }

   
    .common {
        font-size: 12px;
    }
    .star {
        color: #ff0000;
    }
</style>
</head>
<body>
<div style="width:520px;height:340px;border:1px solid gray" id="container"></div>
<input type="button" value="选择标注样式" onclick="openStylePnl()" />
<input type="button" value="关闭" onclick="mkrTool.close()" />
<div id="divStyle" >
    <ul>
        <li>
            <a onclick="selectStyle(0)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:12px;height:21px;background-position: 0 0" /></a>
            <a onclick="selectStyle(1)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:12px;height:21px;background-position: -23 0" /></a>
            <a onclick="selectStyle(2)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:12px;height:21px;background-position: -46 0" /></a>
            <a onclick="selectStyle(3)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:12px;height:21px;background-position: -69 0" /></a>
            <a onclick="selectStyle(4)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:12px;height:21px;background-position: -92 0" /></a>
            <a onclick="selectStyle(5)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:12px;height:21px;background-position: -115 0" /></a>
        </li>
        <li>
            <a onclick="selectStyle(6)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:19px;height:25px;background-position: 0 -21" /></a>
            <a onclick="selectStyle(7)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:19px;height:25px;background-position: -23 -21" /></a>
            <a onclick="selectStyle(8)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:19px;height:25px;background-position: -46 -21" /></a>
            <a onclick="selectStyle(9)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:19px;height:25px;background-position: -69 -21" /></a>
            <a onclick="selectStyle(10)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:19px;height:25px;background-position: -92 -21" /></a>
            <a onclick="selectStyle(11)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:19px;height:25px;background-position: -115 -21" /></a>
        </li>
        <li>
            <a onclick="selectStyle(12)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:17px;height:21px;background-position: 0 -46" /></a>
            <a onclick="selectStyle(13)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:17px;height:21px;background-position: -23 -46" /></a>
            <a onclick="selectStyle(14)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:17px;height:21px;background-position: -46 -46" /></a>
            <a onclick="selectStyle(15)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:17px;height:21px;background-position: -69 -46" /></a>
            <a onclick="selectStyle(16)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:17px;height:21px;background-position: -92 -46" /></a>
            <a onclick="selectStyle(17)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:17px;height:21px;background-position: -115 -46" /></a>
        </li>
        <li>
            <a onclick="selectStyle(18)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:25px;height:25px;background-position: 0 -67" /></a>
            <a onclick="selectStyle(19)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:25px;height:25px;background-position: -25 -67" /></a>
            <a onclick="selectStyle(20)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:25px;height:25px;background-position: -50 -67" /></a>
            <a onclick="selectStyle(21)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:25px;height:25px;background-position: -75 -67" /></a>
            <a onclick="selectStyle(22)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:25px;height:25px;background-position: -100 -67" /></a>
            <a onclick="selectStyle(23)" href = 'javascript:void(0)'><img src="http://api.map.baidu.com/library/MarkerTool/1.2/examples/images/transparent.gif" style="width:19px;height:25px;background-position: -125 -67" /></a>
        </li>
    </ul>
</div>
</body>
</html>
<script type="text/javascript">
var map = new BMap.Map("container");
map.centerAndZoom(new BMap.Point(116.404, 39.915), 12);
map.enableScrollWheelZoom();

//拼接infowindow内容字串
var html = [];
html.push('<span style="font-size:12px">属性信息: </span><br/>');
html.push('<table border="0" cellpadding="1" cellspacing="1" >');
html.push('  <tr>');
html.push('      <td align="left" class="common">名 称：</td>');
html.push('      <td colspan="2"><input type="text" maxlength="50" size="18"  id="txtName"></td>');
html.push('      <td valign="top"><span class="star">*</span></td>');
html.push('  </tr>');
html.push('  <tr>');
html.push('      <td  align="left" class="common">电 话：</td>');
html.push('      <td colspan="2"><input type="text" maxlength="30" size="18"  id="txtTel"></td>');
html.push('      <td valign="top"><span class="star">*</span></td>');
html.push('  </tr>');
html.push('  <tr>');
html.push('      <td  align="left" class="common">地 址：</td>');
html.push('      <td  colspan="2"><input type="text" maxlength="50" size="18"  id="txtAddr"></td>');
html.push('      <td valign="top"><span class="star">*</span></td>');
html.push('  </tr>');
html.push('  <tr>');
html.push('      <td align="left" class="common">描 述：</td>');
html.push('      <td colspan="2"><textarea rows="2" cols="15"  id="areaDesc"></textarea></td>');
html.push('      <td valign="top"></td>');
html.push('  </tr>');
html.push('  <tr>');
html.push('      <td  align="center" colspan="3">');
html.push('          <input type="button" name="btnOK"  onclick="fnOK()" value="确定">&nbsp;&nbsp;');
html.push('          <input type="button" name="btnClear" onclick="fnClear();" value="重填">');
html.push('      </td>');
html.push('  </tr>');
html.push('</table>');  

var infoWin = new BMap.InfoWindow(html.join(""), {offset: new BMap.Size(0, -10)});
var curMkr = null; // 记录当前添加的Mkr
var gc = new BMap.Geocoder();    

var mkrTool = new BMapLib.MarkerTool(map, {
    followText: '阿斯科了解对方很快就得萨芬后',
    autoClose: true
});
mkrTool.addEventListener("markend", function(evt){
    // console.log(evt)
    var mkr = evt.marker;
    mkr.openInfoWindow(infoWin);
    console.log(mkr)
    var pt = mkr.point;
    gc.getLocation(pt, function(rs){
        var addComp = rs.addressComponents;
        $('#txtName').val(addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber);
        // alert(addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber);
    });        

    mkr.enableDragging();
    mkr.addEventListener('dragstart', function(){
        console.log(222222222222222222222)
    });
    mkr.addEventListener('dragging', function(){
        console.log(333333333333333333333)
    });
   
     mkr.addEventListener('dragend', function(e){
        var pointNew = e.point;
        gc.getLocation(pointNew, function(rs){
        var addComp = rs.addressComponents;
        // $('#address').val(addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber);
        // $("#address").html(addComp.province + addComp.city + addComp.district +  addComp.street + addComp.streetNumber);
        $('#txtName').val(addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber);
        $("#hidden_addr").val(addComp.province + addComp.city + addComp.district +  addComp.street + addComp.streetNumber);
        $("#jingdu").val(pointNew.lng);
        $("#weidu").val(pointNew.lat);
        });        
    });
    
    curMkr = mkr;
});

// mkrTool.addEventListener('click', function(){
//     alert(111111)
// });

//打开样式面板
function openStylePnl(){
    document.getElementByIdx_x_x("divStyle").style.display = "block";
}

//选择样式
function selectStyle(index){
    mkrTool.open(); //打开工具
    var icon = BMapLib.MarkerTool.SYS_ICONS[index]; //设置工具样式，使用系统提供的样式BMapLib.MarkerTool.SYS_ICONS[0] -- BMapLib.MarkerTool.SYS_ICONS[23]
    mkrTool.setIcon(icon);
    document.getElementByIdx_x_x("divStyle").style.display = "none";    
}

//提交数据
function fnOK(){
    var name = encodeHTML(document.getElementByIdx_x_x("txtName").value);
    var tel = encodeHTML(document.getElementByIdx_x_x("txtTel").value);
    var addr = encodeHTML(document.getElementByIdx_x_x("txtAddr").value);
    var desc = encodeHTML(document.getElementByIdx_x_x("areaDesc").value);

    if(!name || !tel || !addr){
        alert("星号字段必须填写");    
        return;
    }

    if(curMkr){
        //设置label
        var lbl = new BMap.Label(name, {offset: new BMap.Size(1, 1)});
        lbl.setStyle({border: "solid 1px gray"});
        curMkr.setLabel(lbl);
        
        //设置title
        var title = "电话: " + tel + "\n\r" + "地址: " +addr + "\n\r" + "描述: " + desc;
        curMkr.setTitle(title);        
    }
    if(infoWin.isOpen()){
        map.closeInfoWindow();
    }

    //在此用户可将数据提交到后台数据库中
}

//输入校验
function encodeHTML(a){
    return a.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;");
}

//重填数据
function fnClear(){
    document.getElementByIdx_x_x("txtName").value = "";
    document.getElementByIdx_x_x("txtTel").value = "";
    document.getElementByIdx_x_x("txtAddr").value = "";
    document.getElementByIdx_x_x("areaDesc").value = "";
}
</script>
?>