
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>${product.name}-�в���</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="${product.name}">
	<link href="/css/global/header01.css" rel="stylesheet" type="text/css">
	<link href="/css/product/product.css" rel="stylesheet" type="text/css">
	<link href="/css/global/topcommend.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="/js/jquery.js"></script>
<SCRIPT LANGUAGE="JavaScript">
$(function(){
  $("#commenddetail").html("���ڼ���...");
  $("#scanHistory").html("���ڼ���...");
  $("#commenddetail").load("/front/product/findTopSale", {typeId:"${product.type.parent.typeId}"});
  $("#scanHistory").load("/front/product/findScanHistory");
});

function change(index) {
  var color = $("#colorSelect").val();
  var productId = $("#productId").val();
  location.href="/front/product/detailShow?styleId=" + (index+1) + "&color=" + color + "&productId=" + productId;
}
</SCRIPT>
  </head>
  
  <body onload='$("#index").css("background", "");'>

<div id="ContentBody"><!-- ҳ������ -->

 <div class="browse_left"><!-- ҳ������ ��� --> 
        <!-- ���������Ʒ -->
	 <div class="browse">
	      <div class="browse_t">��������������Ʒ</div>
	      <ul id="scanHistory"></ul>
	 </div>
	<!--��Ʒ�Ƽ� start -->
	<DIV id="topcommend" align="left">
	       <DIV id="newtop"><IMG height=13 src="/images/global/sy2.gif" width=192></DIV>
	       <DIV id="newlist">
		  <DIV id="newmore">
		    <DIV class="title">��Ʒ�Ƽ�</DIV>
		  </DIV>
			<span id="commenddetail">
			</span>
		</DIV>
	</DIV>
</div><!-- ҳ������ ���end -->
	
 <div id="Right" ><!-- ҳ������ �ұ� -->
<form action="/shopping/cart/buy" method="post">
    <div id="browse_left">
      <div style="float:left;"><img src='<@s.property value="style.productImagePath" />'/>
      <br><img src="/images/global/zoom+.gif" style="cursor:hand;" onclick="location.href='/page/product/front/showBigImg.jsp?path=<@s.property value="style.productPrototypeImagePath" />'"/></div>
	  <div class="right_right" style="float:left;">									
	    <div class="right_title"><b>${product.name}</b></div>
	    <div class="right_desc"><ul><li class="li2">��Ʒ��ţ�${product.productId}<font color="#CC0000">���绰����ר�ã�</font></li></ul></div>
	    <br><div class="right_desc">��ɫ��
	    <@s.if test="styles.size>1">
	    <select id="colorSelect" onchange="change(this.selectedIndex);">
	      <@s.iterator value="styles" var="s">
	      <option <@s.if test="#s==style">selected</@s.if>><@s.property value="#s.name"/></option></@s.iterator>
	    </select></@s.if>
	    <@s.else><@s.property value="styles.{name}[0]"/></@s.else>
	    </div>
		<div class="right_desc">
		  <ul>
			<li style="width:320px;">�г��ۣ�<s>${product.marketPrice}</s> Ԫ <font color='#ff6f02'>��վ�ۣ�<b>${product.salePrice} Ԫ</b></font> ��ʡ��<font color='#ff6f02'>${product.savedPrice }</font> Ԫ										</li>
		  	<li class="right_img"><INPUT TYPE="image" SRC="/images/global/sale.gif"></li>
			<li class="guopiprice">[ <IMG src="/images/global/2j4.gif" border="0">&nbsp;<A href="#" target="_blank">����˵��</A> ]&nbsp;&nbsp;&nbsp;&nbsp;[ <IMG src="/images/global/2j4.gif" border="0">&nbsp;<A href="#" target="_blank">���ʽ</A> ]</li>
		  </ul>									
	    </div>
      </div>
  </div>
</form>
<div class='right_blank'></div><div class='right_title1'>��Ʒ˵��</div><div class='right_content'>${product.description}</div>
</div><!-- ҳ������ �ұ� end -->

</div><!-- ҳ������ end -->

</body>
</html>