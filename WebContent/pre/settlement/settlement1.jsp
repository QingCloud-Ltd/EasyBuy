<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<script type="text/javascript">
	var contentPath="${ctx}";
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="${ctx}/statics/css/style.css" />
	<style>
		.nav>.leftNav{
			display:none;
		}
	</style>
    <!--[if IE 6]>
    <script src="${ctx}/statics/js/common/iepng.js" type="text/javascript"></script>
        <script type="text/javascript">
           EvPNG.fix('div, ul, img, li, input, a'); 
        </script>
    <![endif]-->
<title>尤洪</title>
</head>
<body>  
<!--Begin Header Begin-->
    	<!--Begin 所在收货地区 Begin-->
<div class="i_bg">  
    <div class="content mar_20">
    	<img src="${ctx}/statics/images/img1.jpg" />        
    </div>
    
    <!--Begin 第一步：查看购物车 Begin -->
    <div class="content mar_20">
    	<table border="0" class="car_tab" style="width:1200px; margin-bottom:50px;" cellspacing="0" cellpadding="0">
          <tr>
            <td class="car_th" width="490">商品名称</td>
            <td class="car_th" width="140">单价（￥）</td>
            <td class="car_th" width="150">购买数量</td>
            <td class="car_th" width="130">小计</td>
            <td class="car_th" width="150">操作</td>
          </tr>
          <c:forEach var="item" items="${sessionScope.cart.items}">
	          	<tr class="car_tr">
		            <td>
		            	<div class="c_s_img">
		            		<img src="${ctx}/files/${item.product.fileName}" width="73" height="73" />	
		            	</div>
		            	 <span style="height: 100%;vertical-align: middle;">
		            	 	${item.product.name}
		            	 </span>
		            </td>
		            <td align="center">${item.product.price}</td>
		            <td align="center">
		            	<div class="c_num">
		                    <input type="button" value="" onclick="LessQuantity(jq(this),parseInt(${item.product.id}));" class="car_btn_1" />
		                	<input type="text" value="${item.quantity}" name="" class="car_ipt" />  
		                    <input type="button" value="" onclick="subQuantity(jq(this),parseInt(${item.product.id}),parseInt(${item.product.stock}));" class="car_btn_2" />
		                </div>
		            </td>
		            <td align="center" style="color:#ff4e00;">￥<span class="item_cost">${item.product.price*item.quantity}</span></td>
		            <td align="center"><a href="#">删除</a>&nbsp;<a href="#">加入收藏</a></td>
	          </tr>
          </c:forEach>
          <tr height="70">
          	<td colspan="6" style="font-family:'Microsoft YaHei'; border-bottom:0;">
            	<label class="r_rad"><input type="checkbox" name="clear" checked="checked"></label><label class="r_txt">清空购物车</label>
                <span class="fr">商品总价：<b style="font-size:22px; color:#ff4e00;">￥<span id="sumCost">${sessionScope.cart.sumCost}</span></b></span>
            </td>
          </tr>
          <tr valign="top" height="150">
          	<td colspan="6" align="right">
            	<a href="${ctx}/Product?action=queryProductList"><img src="${ctx}/statics/images/buy1.gif" /></a>&nbsp; &nbsp; <a href="#" onclick="settlement2();"><img src="${ctx}/statics/images/buy2.gif" /></a>
            </td>
          </tr>
        </table>
        
    </div>
	<!--End 第一步：查看购物车 End--> 
    
    
    <!--Begin 弹出层-删除商品 Begin-->
    <div id="fade" class="black_overlay"></div>
    <div id="MyDiv" class="white_content">             
        <div class="white_d">
            <div class="notice_t">
                <span class="fr" style="margin-top:10px; cursor:pointer;" onclick="CloseDiv('MyDiv','fade')"><img src="${ctx}/statics/images/close.gif" /></span>
            </div>
            <div class="notice_c">
           		
                <table border="0" align="center" style="font-size:16px;" cellspacing="0" cellpadding="0">
                  <tr valign="top">
                    <td>您确定要把该商品移除购物车吗？</td>
                  </tr>
                  <tr height="50" valign="bottom">
                    <td><a href="#" class="b_sure">确定</a><a href="#" class="b_buy">取消</a></td>
                  </tr>
                </table>
                    
            </div>
        </div>
    </div>    
    <!--End 弹出层-删除商品 End-->

</body>


    <script type="text/javascript" src="${ctx}/statics/js/common/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="${ctx}/statics/js/common/menu.js"></script>    
                
	<script type="text/javascript" src="${ctx}/statics/js/common/n_nav.js"></script>   
    <script type="text/javascript" src="${ctx}/statics/js/common/num.js">
    	var jq = jQuery.noConflict();
    </script>     
    
    <script type="text/javascript" src="${ctx}/statics/js/common/shade.js"></script>
<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>
