<%@ page pageEncoding="gbk"%>
<%@include file="/page/share/taglib.jsp" %>

<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript">
<!--
$(function(){
  if('${type.typeId}'=='') {
    $("#index").css("background", "pink");
  }else{
    $("#t${type.typeId}").css("background", "pink");
    $("#index").css("background", "");
  }
})

function EnterPress(e){ //���� event 
  var e = e || window.event; 
  if(e.keyCode == 13){ 
    document.forms[0].submit(); 
  } 
} 
//-->
</script>
<div id="Head">
  <div id="HeadTop">
    <div id="Logo"><a href="/" target=_top><img alt=�й�����ȫ��ͼ�����Ͻ���ƽ̨�� src="/images/global/yc.jpg" border=0 /></a> </div>
    <div id="HeadNavBar">
      <ul>
        <li class="NoSep"><a id="MyBuyCar"  href="/shopping/cart/list" ><font color="blue"><Strong>���ﳵ</Strong></font></a> </li>
        <li><a href="/page/user/front/register.jsp?toUI=${param.toUI }" >���û�ע��</a> </li>
        <li><a href="/page/user/front/login.jsp">�û���¼</a> </li>
         <c:if test="${!empty sessionScope.user}"> <li><a href="/front/user/logout" >�˳�</a> </li></c:if>
        <li><a href="/page/shopping/myOrder.jsp">�ҵĶ���</a>�������ߣ�222-88888888 </li>
      </ul>
    </div>
  </div>
  <div id="ChannelMenu">
	<UL id="ChannelMenuItems">
		<LI id="MenuHome"><a href="/index.jsp"><span id="index">��ҳ</span></a></LI>
		<LI id="ProducType1Home"><a href="/front/product/list?type.typeId=1"><span id="t1">${application.type1 }</span></a></LI>
		<LI id="ProducType1Home"><a href="/front/product/list?type.typeId=2"><span id="t2">${application.type2 }</span></a></LI>
		<LI id="ProducType3Home"><a href="/front/product/list?type.typeId=3"><span id="t3">${application.type3 }</span></a></LI>
		<LI id="ProducType8Home"><a href="/front/product/list?type.typeId=4"><span id="t4">${application.type4 }</span></a></LI>
	</UL>
<!--  SearchBox -->
<div id="SearchBox">
	  <div id="SearchBoxTop">
		  <div id="SearchForm">
			<form action="/front/product/search" method="post" name="search" id="search">
			 <span class="name">��Ʒ����: </span><input id="word" name="word" value="${word }" onkeypress="EnterPress(event)" onkeydown="EnterPress()" accesskey="s" size="100" maxlength="100"/>
			 <input type="submit" value="�� ��" id="DoSearch"/>
			</form>
		  </div>
	  </div>
      <div id="HotKeywords">
			<ul>
				<li><span>����<c:if test="${!empty sessionScope.user}"><b>${sessionScope.user.name }</b></c:if>����ӭ�����в�����</span></li>
			</ul>
      </div>
   </div>
</div><!-- End SearchBox -->
</div>
<!-- Head End -->