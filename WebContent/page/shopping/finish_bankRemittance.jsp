<%@ page pageEncoding="gbk"%>
<%@ include file="/page/share/taglib.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>�в���-�������</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<LINK href="/css/new_cart.css" rel="stylesheet" type="text/css">
<link href="/css/global/header01.css" rel="stylesheet" type="text/css">
<SCRIPT language=JavaScript src="/js/FoshanRen.js"></SCRIPT>

  </head>
  
  <body onload='$("#index").css("background", "");'>
    <jsp:include page="/page/share/Head.jsp"/>
<BR>
<h1>������:${order.orderId },Ӧ�����:${order.payableFee }Ԫ</h1>
<br>
��ѡ��ĸ��ʽΪ"���е��",�����Ϣ����:
<br/>
�տ���:���ϲ<br>
��������:��������<br>
�˺�:02929292929292<br>ȥ<a href="/page/shopping/myOrder.jsp">�ҵ��˻�</a>�鿴������ϸ<br>
<jsp:include page="/page/share/Foot.jsp" />
  </body>
</html>