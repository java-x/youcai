<%@ page pageEncoding="gbk" %>
<%@ include file="/page/share/taglib.jsp" %>
<html>
<head>
<base target="mainframe">
<Script language="javaScript">
function getTablesByStart(name){
	var inputs = document.getElementsByTagName("table");
	var files = new Array();
	var y = 0;
	for (var i=0; i<inputs.length; i++) {		
	  if (inputs[i].id !=null && inputs[i].id.length>name.length && inputs[i].id.substring(0, name.length)==name){
		 files[y] = inputs[i];
		 y++;
	  }
	}
	return files;
}

function HideAll(){
	var tables = getTablesByStart("menu_");
    for (var i=0; i<tables.length; i++) {
		tables[i].style.display = "none";
		var id = tables[i].id.substring("menu_".length);
		var imgId = document.getElementById("Img"+ id);
		var imgId2 = document.getElementById("Img"+ id + "_0");
		if(imgId) imgId.src="/images/midclosedfolder.gif";
		if(imgId2) imgId2.src="/images/clsfld.gif";
	}
}

function turnit(id) {
	var menu = document.getElementById("menu_"+ id);
	var imgId = document.getElementById("Img"+ id);
	var imgId2 = document.getElementById("Img"+ id + "_0");
	if (menu.style.display=="none"){
		HideAll();
		menu.style.display = "";
		if(imgId) imgId.src="/images/midopenedfolder.gif";
		if(imgId2) imgId2.src="/images/openfld.gif";
	}else{
		menu.style.display = "none";
		if(imgId) imgId.src="/images/midclosedfolder.gif";
		if(imgId2) imgId2.src="/images/clsfld.gif";
	}
}
function exitsystem(){
	if (confirm('��ȷ��Ҫ�˳�ϵͳ��'))
	  window.parent.location="/employee/logout"; 
}
</Script>
<style type="text/css">
<!--
td {  font-size: 13px; color:#000000; font-weight: none}
a:active {  color:#FF6600; text-decoration: none}
a:hover {  color:#FF6600; text-decoration: none}
a:link {  color: #FF6600; text-decoration: none}
a:visited {  color:#FF6600; text-decoration: none}
-->
</style>
</head>
<body leftmargin="0" topmargin="0" bgcolor="#F1F1F1"><br>
<!-------------------------��Ʒ����START------------------------------->
<table border=0 width="98%" align="center" cellspacing="0" cellpadding="0">
  <tr> 
    <td colspan="3" onMouseUp="turnit('Product')" style="CURSOR: hand"> 
      <img id="ImgProduct" src="/images/midclosedfolder.gif" align="absMiddle" border="0" width="16"><img name="ImgProduct_0" src="/images/clsfld.gif" align="absMiddle" border="0"> 
        <font face=����><b>��Ʒ����</b></font> 
    </td>
  </tr>
</table>
<table id="menu_Product" border=0 width="98%" align="center" cellspacing="0" cellpadding="0" style="display:none">
  <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href="/control/product/type/list">��Ʒ������</a> </td>
  </tr>
  <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href="/control/product/brand/list">��ƷƷ�ƹ���</a> </td>
  </tr>
  <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href="/control/product/list">��Ʒ����</a> </td>
  </tr>
</table>
<!-------------------------��Ʒ����END------------------------------->
<!-------------------------��������START------------------------------->
<table border=0 width="98%" align="center" cellspacing="0" cellpadding="0">
  <tr> 
    <td colspan="3" onMouseUp="turnit('order')" style="CURSOR: hand"> 
      <img id="Imgorder" src="/images/midclosedfolder.gif" align="absMiddle" border="0" width="16"><img name="Imgorder_0" src="/images/clsfld.gif" align="absMiddle" border="0"> 
        <font face=����><b>��������</b></font> 
    </td>
  </tr>
</table>
<table id="menu_order" border=0 width="98%" align="center" cellspacing="0" cellpadding="0" style="display:none">
  <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href="/control/order/query">������ѯ</a> </td>
  </tr> 
  <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href="/control/order/list?order.state=WAITCONFIRM">����˶���</a> </td>
  </tr>
   <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href="/control/order/list?order.state=WAITPAYMENT">�ȴ������</a> </td>
  </tr> 
   <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href="/control/order/list?order.state=ADMEASUREPRODUCT">�����������</a> </td>
  </tr> 
   <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href="/control/order/list?order.state=WAITDELIVER">�ȴ���������</a> </td>
  </tr> 
   <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href="/control/order/list?order.state=DELIVERED">�ѷ�������</a> </td>
  </tr> 
   <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href="/control/order/list?order.state=RECEIVED">���ջ�����</a> </td>
  </tr> 
  <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href="/control/order/list?order.state=CANCEL">��ȡ������</a> </td>
  </tr>
  <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href="/control/order/listLocked">����������</a> </td>
  </tr>
  <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a>������ʷ</a> </td>
  </tr>
  <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a>����ͳ�Ʒ���</a> </td>
  </tr>
</table>
<!-------------------------��������END------------------------------->
<!-------------------------��վ�û�����START------------------------------->
<table border=0 width="98%" align="center" cellspacing="0" cellpadding="0">
  <tr> 
    <td colspan="3" language="JavaScript" onMouseUp="turnit('user')" style="CURSOR: hand"> 
      <img id="Imguser" src="/images/midclosedfolder.gif" align="absMiddle" border="0" width="16"><img name="Imguser_0" src="/images/clsfld.gif" align="absMiddle" border="0"> 
        <font face=����><b>�û�����</b></font> 
    </td>
  </tr>
</table>
<table id="menu_user" border=0 width="98%" align="center" cellspacing="0" cellpadding="0" style="display:none">
  <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href="/control/user/list">��վ�û�����</a> </td>
  </tr>
  <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href='/page/user/queryUser.jsp'>�û���ѯ</a> </td>
  </tr>
</table>
<!-------------------------��վ�û�����END------------------------------->
<!-------------------------����Ա������START------------------------------->
<table border=0 width="98%" align="center" cellspacing="0" cellpadding="0">
  <tr> 
    <td colspan="3" language="JavaScript" onMouseUp="turnit('department')" style="CURSOR: hand"> 
      <img id="Imgdepartment" src="/images/midclosedfolder.gif" align="absMiddle" border="0" width="16"><img name="Imgdepartment_0" src="/images/clsfld.gif" align="absMiddle" border="0"> 
        <font face=����><b>����Ա������</b></font> 
    </td>
  </tr>
</table>
<table id="menu_department" border=0 width="98%" align="center" cellspacing="0" cellpadding="0" style="display:none">
  <yc:permission privilege="list" module="department">
  <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href="/control/department/list">���Ź���</a> </td>
  </tr>
  </yc:permission>
  <yc:permission privilege="list" module="employee">
  <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href="/control/employee/list">Ա������</a> </td>
  </tr>
  </yc:permission>
  <yc:permission privilege="query" module="employee">
  <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href="/control/employee/query">Ա����ѯ</a> </td>
  </tr>
  </yc:permission>
  <yc:permission privilege="list" module="privilegegroup">  
  <tr> 
    <td width="50"><img src="/images/vertline.gif" border=0><img src="/images/lastnodeline.gif" align="absMiddle" border=0 width="16" height="22"><img src="/images/doctemp.gif" align="absMiddle" border="0" width="16" height="16"></td>
    <td width="123"> <a href="/control/privilegegroup/list">Ȩ�������</a> </td>
  </tr>
  </yc:permission>  
  
</table>
<!-------------------------����Ա������END------------------------------->
<table border="0" width="98%" align="center" cellspacing="0" cellpadding="0">
  <tr> 
    <td width="20"><img src="/images/lastnodeline.gif" border="0"></td>
    <td>
      <a href="#" onclick="exitsystem()">�˳�ϵͳ</a>
    </td>
  </tr>
</table>
</body>
</html>