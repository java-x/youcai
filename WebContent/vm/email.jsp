<%@ page pageEncoding="gbk"%>
<%@ include file="/page/share/taglib.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'email.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
<!--
.eng {
	font-family: "Tahoma", "Lucida Console";
	font-size: 10px;
	font-weight: normal;
	color: #333333;
	text-decoration: none;
}
.engtitle {
	font-family: "Tahoma", "Lucida Console";
	font-size: 11px;
	line-height: 25px;
	font-weight: bolder;
	text-transform: uppercase;
	color: #0066CC;
	text-decoration: none;
}
.cntext {
	font-family: "Tahoma", "����";
	font-size: 9pt;
	color: #333333;
	text-decoration: none;
	line-height: 22px;
}
a {
	font-size: 9pt;
	color: #3366CC;
	text-decoration: none;
}
a:hover {
	font-size: 9pt;
	color: #6699FF;
	text-decoration: none;
}
td {
	font-size: 9pt;
	text-decoration: none;
}
.red {color: #FF0000}
.eng1 {font-family: "Tahoma", "Lucida Console";
	font-size: 10px;
	font-weight: normal;
	color: #333333;
	text-decoration: none;
}
-->
</style>
</head>

<body leftmargin="0" topmargin="10" marginwidth="0" marginheight="0">
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="right"><img src="http://localhost/global/_logo.gif">  <hr align="left" width="100%"  color="#6699CC" size="1" noshade></td>
  </tr>
  <tr>
    <td><span class="cntext">�𾴵Ŀͻ���${username}<br>
      &nbsp; &nbsp; &nbsp; &nbsp; ���ã���л���Ե�������������֧�֣�<br>&nbsp; &nbsp; &nbsp; &nbsp; <font color="red">����Ҫͨ�������������������������</font>��<br>
      <span class="cntext">&nbsp; <strong>����</strong></span>��<br>
	<a target="_blank" href="http://localhost/front/user/showChangePasswordUI?username=${username}&validateCode=${validateCode}&time=${time}">
	http://localhost/user/findPassword3?username=${username}&validateCode=${validateCode}&time=${time}
	</a>
      <br>
      ��������ܵ���������ӣ��뽫�����Ӹ��Ƶ��������ַ���з��ʣ�Ҳ�������������Ĵ�����
      <br><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" >
        <tr> 
		 <td height="20">�������ʼ�����ϵͳ�Զ����ͣ�����������Ҫѯ�ʻ��������������ȡ����ϵ! 
      <hr size="1" color="#D2DDED" noshade></td></tr> </table>
  </tr>
  <tr> 
    <td height="20">
    <table width="95%" border="0" align="center" cellpadding="4" cellspacing="0" >
      <tr>
        <td colspan="4" align="right" valign="middle">
		<table width="95%" border="0" align="center" cellpadding="4" cellspacing="0" >
      <tr>
        <td colspan="4" align="right" valign="middle"><table width="100%" border="0" cellpadding="0" cellspacing="0" >
          <tr>
            <td width="95" height="26" valign="middle">��Ʒ��������ѯ:</td>
            <td colspan="2" align="left">010-64663070  ( ��08:00-��22:00 )</td>
          </tr>
          <tr>
            <td height="26">����֧��:</td>
            <td colspan="2" align="left">13671323507</td>
          </tr>
          <tr>
            <td height="26">��˾����:</td>
            <td align="left">010-64663070&lt;������벦��õ绰&gt;</td>
          </tr>
          <tr>
            <td height="26">��������:</td>
            <td  align="left">100016</td>
          </tr>
          <tr>
            <td height="26">��˾��ַ:</td>
            <td height="25" align="left">�����г�����������ʮ�ַ�2��¥�������ҵ428��</td>
          </tr>
        </table></td>
        </tr>
      <tr>
        <td height="25" colspan="3"><strong>honey.com, Inc. </strong> ������<a href="http://localhost"><strong><font color="#FF0000">www.honey.com</font></strong></a> </td>
      </tr>
</table>		</td>
        </tr>
    </table>
    </td>
  </tr>
</table>
</body>
</html>