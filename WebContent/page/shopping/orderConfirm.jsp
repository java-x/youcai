<%@ page pageEncoding="gbk"%>
<%@ include file="/page/share/taglib.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>有才网-结算中心：订单确认</TITLE>
<META http-equiv="pragma" content="no-cache">
<META http-equiv="Cache-Control" content="no-cache, must-revalidate">
<META http-equiv="expires" content="Wed, 26 Feb 2006 08:21:57 GMT">
<link href="/css/global/orderconfirm.css" rel="stylesheet" type="text/css">
<SCRIPT language=JavaScript src="/js/FoshanRen.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript">
<!--
// 表单验证
function validateForm(){
	var form = document.forms[0];
	if(trim(form.note.value)!="" ){
		if(byteLength(form.note.value)>200){
			alert("\n附言必须在100字以内");
			return false;
		}
	}
	return true;
}

function turnToCartUI(){
	if(validateForm()){
	  var form = document.forms[0];
	  form.action = "/page/shopping/cart.jsp";
	  form.submit();
	}
}
function turnToDeliverWayUI(){
	if(validateForm()){
	  var form = document.forms[0];
	  form.action = "/customer/shopping/manage/showDeliverInfoUI";
	  form.submit();
	}
}
function turnToPaymentWayUI(){
	if(validateForm()){
	  var form = document.forms[0];
	  form.action = "/customer/shopping/manage/showPaymentWayUI";
	  form.submit();
	}
}
//-->
</SCRIPT>
</HEAD>
<BODY>
<TABLE cellSpacing=0 cellPadding=0 align=center border=0>
  <TBODY>
  <TR>
    <TD><a href="/index.jsp"><IMG src="/images/global/yc.jpg" ></a>&nbsp;&nbsp;<IMG height=36 src="/images/buy/az-s-checkout-confirm-banne.gif" >
  </TD></TR>
  </TBODY>
</TABLE>
<BR>

<form action="/customer/shopping/manage/saveOrder" method="post">
<input type="hidden" name="directUrl" value="${directUrl }" />
<TABLE cellSpacing=0 cellPadding=0 width="66%" align=center border=0>
  <TBODY>
  <TR>
    <TD>
      <TABLE cellSpacing=0 cellPadding=4 width="100%" border=0>
        <TBODY>
        <TR>
          <TD>
            <DIV align=left><SPAN 
            class=h1><STRONG>请查看您的订单,点击“订单确认”后提交订单</STRONG></SPAN><BR>
            <BR>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center 
            border=0>
              <TBODY>
              <TR>
                <TD vAlign=top width=7 bgColor=#3163ce height=30><IMG height=17 
                  src="/images/buy/az-s-top-left-blue-corner.gif" width=17></TD>
                <TD bgColor=#3163ce Align="top">
                  <DIV align=center><IMG height=21 src="/images/buy/az-s-click-place-your-order.gif" width=420> </DIV></TD>
                <TD bgColor=#3163ce Align=right>
                  <DIV id=layer_finish1><INPUT onClick="return validateForm()" type="image" height=37 alt=订单确认 width=116 src="/images/buy/az-s-place-order_01.gif" border=0> </DIV></TD>
                <TD vAlign=top width=7 bgColor=#3163ce><IMG height=17 src="/images/buy/az-s-top-right-blue-corner.gif"  width=17></TD></TR></TBODY></TABLE>
            <TABLE cellSpacing=17 cellPadding=0 width="100%" align=center 
            bgColor=#F4F4EC border=0>
              <TBODY>
              <TR>
                <TD vAlign=top>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=6><IMG height=20 src="/images/buy/az-s-spc-tl-inside-drksnd.gif" width=6></TD>
                      <TD bgColor=#bbbb9e>
                        <DIV class=font14 align=center><STRONG>配送详情</STRONG></DIV></TD>
                      <TD width=6><IMG height=20 src="/images/buy/az-s-spc-tr-inside-drksnd.gif" width=6></TD></TR></TBODY></TABLE>
                  <TABLE cellSpacing=0 cellPadding=3 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD width=184 
                        bgColor=#eeeeee>&nbsp;<STRONG>商品信息：</STRONG><IMG onclick="turnToCartUI()" height=17 src="/images/buy/az-s-change.gif" width=45 border=0></TD>
                        <TD width="408" bgColor=#eeeeee></TD>
                      </TR>
                    </TBODY>
                  </TABLE>
                  <TABLE cellSpacing=0 cellPadding=4 width="100%" 
                  bgColor=#ffffff border=0>
                    <TBODY>
                      <TR>
                        <TD><table width="96%" border="0" align="right" cellpadding="5" cellspacing="0">
                          <tr>
                            <td height="1" colspan="3" bgcolor="#3163CE"></td>
                          </tr>
<!-- loop begin -->
<c:forEach items="${cart.items}" var="item">
      <TR>
        <TD width="68%" height="33">
		<STRONG><A href="/front/product/detailShow?productId=${item.product.productId }" target="_blank">${item.product.name }</A></STRONG><span class="h3color"><c:forEach items="${item.product.styles}" var="style">[颜色：${style.name}]</c:forEach></span> </TD>
        <TD width="11%" align="center">数量：${item.amount }</TD>
        <TD width="21%">单价：￥<span class="Price">${item.product.salePrice }元</SPAN></TD>
      </TR>
</c:forEach><!-- loop end -->
                          <tr>
                            <td height="1" colspan="3" bgcolor="#CCCCCC"></td>
                          </tr>
                          <tr>
                            <td colspan="3" align="right">商品总价：￥${cart.totalSalePrice }元&nbsp; 配送费：￥${cart.deliverFee }元
							
							&nbsp; <span >订单金额：￥${cart.orderTotalPrice }元</span></td>
                            </tr>
                          <tr>
                            <td colspan="3" align="right">
							&nbsp;<strong><font color=#cc0000>应付金额：￥${cart.orderTotalPrice }元</font></strong></td>
                          </tr>
                        </table></TD>
                      </TR>
                    </TBODY>
                  </TABLE>
                  <TABLE cellSpacing=0 cellPadding=3 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=80 bgColor=#eeeeee>&nbsp;<STRONG>送货地址：</STRONG></TD>
                      <TD bgColor=#eeeeee><IMG onclick="turnToDeliverWayUI()" height=17 src="/images/buy/az-s-change.gif" width=45 border=0></TD></TR>
				  </TBODY></TABLE>
                  <TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD bgColor=#ffffff>&nbsp;收货人姓名：${cart.acceptor.acceptorName}<BR>
                      &nbsp;地址：${cart.acceptor.address}
						<BR>&nbsp;邮编：${cart.acceptor.postalcode}
                        <BR>&nbsp;电话：${cart.acceptor.phone} <c:if test="${!empty cart.acceptor.mobile}"> &nbsp; </c:if>${cart.acceptor.mobile}
						</TD></TR>
				  </TBODY></TABLE>
                  <TABLE cellSpacing=0 cellPadding=3 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=150 bgColor=#eeeeee>&nbsp;<STRONG>送货与付款方式：</STRONG></TD>
                      <TD width="756" bgColor=#eeeeee><img onclick="turnToPaymentWayUI()" height=17 src="/images/buy/az-s-change.gif" width=45 border=0></TD>
                    </TR></TBODY></TABLE>
                  <TABLE cellSpacing=0 cellPadding=4 width="100%" bgColor=#ffffff border=0>
                    <TBODY>
                    <TR>
                      <TD>
                        <TABLE width="60%">
                          <TBODY>
                          <TR>
                            <TD width="30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
                            <TD width="150">&nbsp;送货方式：${cart.acceptor.deliverWay.name}</TD>
                            <TD width="30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
                            <TD width="221">&nbsp;付款方式：${cart.paymentWay.name }</TD>
						</TR>
                          <TR>
                            <TD>&nbsp;</TD>
                            <TD colspan="3">
                              &nbsp;时间要求：${cart.acceptor.requirement}</TD>
                            </TR>
						</TBODY></TABLE>
					  </TD>
                    </TR>
				 </TBODY></TABLE>
				<!--  发票 --><!--  发票 -->
                  <TABLE cellSpacing=0 cellPadding=3 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD bgColor=#eeeeee>&nbsp;<STRONG>附言</STRONG> (填写您的一些要求,100字以内)：</TD>
                    </TR>
					 <TR>
                      <TD><TEXTAREA NAME="note" ROWS="3" COLS="60">${cart.note }</TEXTAREA></TD>
                    </TR>
				  </TBODY></TABLE></TBODY></TABLE>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" align="center" bgColor="#4480dd" border=0>
              <TBODY>
              <TR>
                <TD vAlign="bottom" width=7 height=30><IMG height=17 src="/images/buy/az-s-bottom-left-blue-corner.gif"  width=17></TD>
                <TD Align="right">
                  <DIV id="layer_finish2"><INPUT onClick="return validateForm()" type="image" height=37 alt="订单确认" width="116" src="/images/buy/az-s-place-order_02.gif" border=0> </DIV></TD>
                <TD vAlign=bottom width=7><IMG height=17 
                  src="/images/buy/az-s-bottom-right-blue-corner.gif" 
                  width=17></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>
  <DIV align=center></DIV></TD></TR></TBODY></TABLE>
</form>
</BODY></HTML>