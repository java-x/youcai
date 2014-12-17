<%@ page pageEncoding="gbk"%>
<%@ include file="/page/share/taglib.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>�в���-�������ģ���д�ջ���ַ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link href="/css/global/address.css" rel="stylesheet" type="text/css">
	<link href="/css/global/bottom.css" rel="stylesheet" type="text/css">
	<SCRIPT language=JavaScript src="/js/FoshanRen.js"></SCRIPT>
	<SCRIPT language=JavaScript src="/js/jquery.js"></SCRIPT>
	<script type="text/javascript">
	$(function(){
	  for(i=1;i<=2;i++){
	    if($("#ag"+i).val()==$("#acceptorGender").val()) $("#ag"+i).attr("checked", "checked");
	    if($("#bg"+i).val()==$("#buyerGender").val()) $("#bg"+i).attr("checked", "checked");
	    if($("#bia"+i).val()==$("#buyerIsAcceptor").val()) $("#bia"+i).attr("checked", "checked");
	  }
	  
	  initPhone();
      showBuyInfo();
      $("#sureToNext").click(function(){
        if(validate()) document.forms[0].submit();
      });
    });
    
    function initPhone(){
	  var form = document.forms[0];
	  var phone = $("#phone").val();
	  if(phone!=""){
		var tels = phone.split("-");
		if(tels.length>=2){
		  form.forepart.value = tels[0];
		  form.maintel.value = tels[1];
		  if(tels.length==3) form.extension.value = tels[2];
		}
	  }
	  var buyerphone = $("#buyerPhone").val();
	  if(buyerphone!=""){
	    var tels = buyerphone.split("-");
	    if(tels.length>=2){
		  form.buyer_forepart.value = tels[0];
		  form.buyer_maintel.value = tels[1];
		  if(tels.length==3) form.buyer_extension.value = tels[2];
	    }
      }
	}
	
	function showBuyInfo(){
	  var form = document.forms[0];
	  if($("input[name='buyerIsAcceptor']:checked").val()=="false") 
		document.getElementById('buyerinfoInput').style.display="";
    }
    
    function buyerinfoSelect(issame){
	  if("true"==issame){
		document.getElementById('buyerinfoInput').style.display="none";
	  }else{
		document.getElementById('buyerinfoInput').style.display="";
	  }
    }
    
    function FormField(id, label){
		this.id = id;
		this.label = label;
	}
	
	function validate(){
	  var form = document.forms[0];
	  var fields = new Array(new FormField("acceptorName","�ջ�������"), new FormField("address","�ջ��˵�ַ"),
						new FormField("email","�����ʼ�"), new FormField("postalcode","��������"));
	  for(var i=0;i<fields.length;i++){
		if(trim($("#"+fields[i].id).val())==""){
		  alert(fields[i].label+ " ����Ϊ��");
		  return false;
		}
	  }
	  if(!isValidEmail($("#email").val())){
		alert("�ջ��˵�email��ʽ����ȷ");
		return false;
	  }
	  if(!/^\d{6}$/.test(trim($("#postalcode").val()))){
		alert("�ջ��˵��������������6λ����");
		return false;
	  }
	  if(trim($("#mobile").val())!=""){
		if(!/^1[35]\d{9}$/.test(trim($("#mobile").val()))){
		  alert("�ջ��˵��ֻ��Ÿ�ʽ����ȷ");
		  return false;
		}
	  }
	  if(trim(form.maintel.value)!=""){
		if(/^\d{7,8}$/.test(trim(form.maintel.value))){
		  $("#phone").val(form.forepart.value+"-"+form.maintel.value);
		  if(trim(form.extension.value)!="") $("#phone").val($("#phone").val() + "-"+ form.extension.value);
		}else{
		  alert("�ջ��˵ĵ绰��������7λ");
		  return false;
		}
	  }
	  if(trim($("#phone").val())=="" && trim($("#mobile").val())==""){
		alert("�ջ��˵��ֻ��͵绰������һ�����");
		return false;
	  }
	  
	  if($("input[name='buyerIsAcceptor']:checked").val()=="false"){
		var buyerfields = new Array(new FormField("buyerName","�����ߵ�����"), new FormField("buyerAddress","�����ߵĵ�ַ"),
						new FormField("buyerPostalcode","�����ߵ���������"));
		for(var i=0;i<buyerfields.length;i++){
		  if(trim($("#"+buyerfields[i].id).val())==""){
			alert(buyerfields[i].label+ " ����Ϊ��");
			return false;
		  }
		}
		if(/^\d{7,8}$/.test(trim(form.buyer_maintel.value))){
		  $("#buyerPhone").val(form.buyer_forepart.value+"-"+ form.buyer_maintel.value);
		  if(trim(form.buyer_extension.value)!="") $("#buyerPhone").val($("#buyerPhone").val() + "-"+ form.buyer_extension.value);
		}else{
		  alert("�����ߵĵ绰��������7λ");
		  return false;
		}
	    
	    if(trim($("#buyerPhone").val())=="" && trim($("#buyerMobile").val())==""){
		  alert("�����ߵ��ֻ��͵绰������һ�����");
		  return false;
	    }
	  }
	  
	  return true;
	}
	
	//email��֤
    function isValidEmail(inEmail){
	  var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	  return filter.test(inEmail);
    }
	</script>
  </head>
  
  <body>
    <form action="/customer/shopping/manage/saveDeliverInfo" method="post">
    <input type="hidden" name="directUrl" value="${param.directUrl }" />
    
    <input type="hidden" id="buyerIsAcceptor" value="${buyerIsAcceptor }">
    <input type="hidden" id="acceptorGender" value="${acceptorGender }">
    <input type="hidden" id="buyerGender" value="${buyerGender }">
    
<TABLE cellSpacing=0 cellPadding=0 align="center" border=0>
  <TBODY>
  <TR>
    <TD><a href="/index.jsp"><IMG src="/images/global/yc.jpg" ></a>   &nbsp;&nbsp;<IMG height=36 src="/images/buy/az-s-checkout-shipping-bann.gif" > </TD></TR></TBODY></TABLE><BR>

<TABLE cellSpacing=0 cellPadding=0 width="66%" align=center border=0>
  <TBODY>
  <TR>
    <TD>
      <TABLE cellSpacing=1 cellPadding=1 width="90%" bgColor=#eeeecc 
        border=0><TBODY>
        <TR>
          <TD bgColor="#ffffff">
            <TABLE cellSpacing=0 cellPadding=4 width="100%" border=0>
              <TBODY>
              <TR bgColor="#eeeecc">
                <TD><strong><span 
            class=h1><strong>���������͵�ַ</strong>:</span></strong></TD>
                <TD bgColor="#eeeecc">&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <DIV id="cndivaddress">
      <TABLE cellSpacing=1 cellPadding=4 width="100%" border=0>
        <TBODY>
        <TR>
          <TD colSpan=2>&nbsp;</TD>
        </TR>
        <TR>
          <TD width=214>
            <DIV align="right">�ջ�������<span id="NameLable"></span>��</DIV></TD>
          <TD><input type="text" id="acceptorName" name="acceptor.acceptorName" value="${acceptor.acceptorName }" maxlength="8" size="30"/><FONT color="#ff0000">*</FONT>
          <input type="radio" id="ag1" name="acceptorGender" value="MAN" checked/>���� <input type="radio" id="ag2" name="acceptorGender" value="WOMEN"/>Ůʿ</TD></TR>
        <TR>
          <TD height="27">
            <DIV align="right">�ջ��˵�ַ<span id="AddressLable"></span>�� </DIV></TD>
          <TD><input type="text" id="address" name="acceptor.address" value="${acceptor.address }" maxlength="100" size="60"/><FONT 
            color="#ff0000">*</FONT></TD></TR>
        <TR>
          <TD height="27">
            <DIV align="right">�����ʼ�<span id="EmailLable"></span>��</DIV></TD>
          <TD><input type="text" id="email" name="acceptor.email" value="${user.email }" maxlength="45" size="30"/><FONT color="#ff0000">*</FONT></TD></TR>
        <TR>
          <TD height="27">
            <DIV align="right">��������<span id="PostalcodeLable"></span>��</DIV></TD>
          <TD><input type="text" id="postalcode" name="acceptor.postalcode" value="${acceptor.postalcode }" maxlength="6" size="20"/><FONT 
            color="#ff0000">*</FONT> <font color="#484848">����ȷ��д�������룬�����������Ķ����ʹ�ʱ�䡣��֪���ʱࣿ<a href="http://www.cpdc.com.cn/webmodules/postcode/CPDC_03G01.aspx" target="_blank">��������ѯ</a></font></TD></TR>
        <TR>
          <TD><input id="phone" type="hidden" name="acceptor.phone" value="${acceptor.phone }" />
            <DIV align=right>�绰<span id="TelLable"></span>��</DIV></TD>
          <TD><table width="30%" border="0" cellpadding="0" cellspacing="2">
            <tr>
              <td><input type="text" value="010" size="4" name="forepart" maxlength="4" onkeypress="checkNum();"></td>
              <td><input type="text" name="maintel" size="8" maxlength="8" onkeypress="checkNum();"></td>
              <td><input type="text" name="extension" size="4" maxlength="4" onkeypress="checkNum();"></td>
            </tr>
            <tr>
              <td><span class="STYLE1">����</span></td>
              <td><span class="STYLE1">�绰����</span></td>
              <td><span class="STYLE1">�ֻ�</span></td>
            </tr>
          </table></TD>
        </TR>
        <TR>
          <TD>
            <DIV align=right>�ֻ�<span id="MobileLable"></span>��</DIV></TD>
          <TD><input type="text" id="mobile" name="acceptor.mobile" value="${acceptor.mobile }" maxlength="15" size="20" onkeypress=""/> 
<font color="#484848">���ֻ��͵绰������һ����</font></TD></TR>
        <TR>
          <TD>
            <DIV align="right">���������ջ����Ƿ���ͬ<FONT color="#ff0000">*</FONT>��</DIV></TD>
          <TD>
            <input type="radio" id="bia1" name="buyerIsAcceptor" value="true" onclick="buyerinfoSelect(this.value)" checked/> <b>��ͬ</b>
		    <input type="radio" id="bia2" name="buyerIsAcceptor" value="false" onclick="buyerinfoSelect(this.value)"/> <b>����ͬ</b> 
		  </TD>
        </TR>
		  <!---------------------------->
        <TR id="buyerinfoInput" style="DISPLAY: none">
          <TD></TD>
          <TD nowrap><div class="OkMsg" >
		  <TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
            <TR>
              <TD align="right" height="25"><FONT color="#f47a22">*</FONT> ������������</TD>
              <TD align="left"><input type="text" id="buyerName" name="buyer.buyerName" value="${buyer.buyerName }" maxlength="8" size="30" />
              &nbsp;<input type="radio" id="bg1" name="buyerGender" value="MAN" checked/>���� <input type="radio" id="bg2" name="buyerGender" value="WOMEN"/>Ůʿ</TD>
            </TR>
            <TR>
              <TD align="right" height="25"><FONT color="#f47a22">*</FONT> ��ϸ��ַ��</TD>
              <TD align="left"><input type="text" id="buyerAddress" name="buyer.address" value="${buyer.address }" maxlength="100" size="60" />
              </TD>
            </TR>
            <TR>
              <TD align="right" height="25"><FONT color="#f47a22">*</FONT> �������룺</TD>
              <TD><TABLE cellSpacing="0" cellPadding="0" border="0">
                  <TR>
                    <TD align="left" height="20"><input type="text" id="buyerPostalcode" name="buyer.postalcode" value="${buyer.postalcode }" maxlength="6" size="20"/>
                    </TD>
                    <TD align="left">&nbsp;&nbsp;<font color="#484848">����ȷ��д�������룬�����������Ķ����ʹ�ʱ�䡣</font> </TD>
                  </TR>
                </TABLE></TD>
            </TR>
            <TR>
              <TD align="right" height="25"><FONT color="#f47a22">*</FONT> �绰��</TD>
              <TD><TABLE cellSpacing="0" cellPadding="0" border="0">
                  <TR>
                    <TD align="left" colSpan="3"><input type="text" id="buyerMobile" name="buyer.mobile" value="${buyer.mobile }" maxlength="15" size="20"/> </TD>
                    <TD height="25">&nbsp;�ƶ��绰</TD>
                  </TR>
                  <TR>
					<td><input type="text" value="010" size="4" name="buyer_forepart" maxlength="4" onkeypress=""></td>
					<td><input type="text" name="buyer_maintel" size="8" maxlength="8" onkeypress=""></td>
					<td><input type="text" name="buyer_extension" size="4" maxlength="4" onkeypress=""></td>
                    <TD height="25">&nbsp;�̶��绰<input id="buyerPhone" type="hidden" name="buyer.phone" value="${buyer.phone }" /></TD>
                  </TR>
                  <TR>
                    <TD align="center"><font color="#484848">����</font></TD>
                    <TD align="center"><font color="#484848">�绰</font></TD>
                    <TD align="center"><font color="#484848">�ֻ�</font></TD>
                    <TD>&nbsp;</TD>
                  </TR>
                </TABLE></TD>
            </TR>
            <TR>
              <TD height="20">&nbsp;</TD>
              <TD align="left"> <font color="#484848">��������������ϵ�绰����Ҫʱ�����ǻ�ͨ���绰����ȷ�������Ϣ����</font></TD>
            </TR>
          </TABLE></div>
		  </TD>
        </TR>
		  <!---------------------------->

        <TR>
          <TD colSpan=2 align="center"><IMG id="sureToNext" src="/images/buy/az-sfl-shipping-to-this-boo.gif" vspace=5 border=0 style="cursor:hand;"></TD></TR>

		  </TBODY></TABLE></DIV>
      <td>&quot;</TD></TR></TBODY></TABLE>
</form>

<jsp:include page="/page/share/Foot.jsp"/>
  </body>
</html>