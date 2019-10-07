<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="top.jsp"/>
<head>
    <script>
        window.onload=function () {
            document.getElementById("delSelected").onclick=function () {
                if(confirm("你确定要删除所选商品吗？")){
                    document.getElementById("form").submit();
                }
            }
        }

        window.onload=function () {
            document.getElementById("delSelected").onclick=function () {
                if(confirm("你确定要删除所选条目吗？")){
                    document.getElementById("form").submit();
                }
            }
            //1.获取第一个cd
            document.getElementById("firstCb").onclick = function(){
                //2.获取下边列表中所有的cb
                var cbs = document.getElementsByName("uid");
                //3.遍历
                for (var i = 0; i < cbs.length; i++) {
                    //4.设置这些cbs[i]的checked状态 = firstCb.checked
                    cbs[i].checked=this.checked;
                }
            }
        }
    </script>
</head>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 商品列表 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel  heading-border">
                <div class="panel-menu">
                    <div class="row">
                        <td colspan="8" align="center"><a class="btn btn-primary" href="javascript:void(0);" id="delSelected">删除选中</a></td>
                        <div class="hidden-xs hidden-sm col-md-3">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-refresh" onclick="javascript:window.location.href='/ugoods/order_list';"></i>
                                </button>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-9 text-right">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-chevron-left"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-chevron-right"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-body pn">
                    <form id="form" action="/ugoods/to_removeSelected">
                    <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                        <thead>
                        <tr class="">
                            <th><input type="checkbox" class="text-center hidden-xs" id="firstCb"></th>
                            <th class="hidden-xs">订单编号</th>
                            <th class="hidden-xs">商品编号</th>
                            <th class="hidden-xs">商品名称</th>
                            <th class="hidden-xs">商品价格</th>
                            <th class="hidden-xs">商品类型</th>
                            <th class="hidden-xs">商品生产商</th>
                            <th class="hidden-xs">订单状态</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list_order}" var="order">
                            <tr class="message-unread">
                                <td class="hidden-xs">
                                    <label class="option block mn">
                                        <input type="checkbox" name="uid" value="${order.id_order}">
                                        <span class="checkbox mn"></span>
                                    </label>
                                </td>
                                <td>${order.id_order}</td>
                                <td>${order.id_goods}</td>
                                <td>${order.name_goods}</td>
                                <td>${order.price_goods}</td>
                                <td>${order.type_goods}</td>
                                <td>${order.name}</td>
                                <c:choose>
                                    <c:when test="${order.state_order=='已支付'}">
                                        <td><span class="label label-success">${order.state_order}</span></td>
                                    </c:when>
                                    <c:when test="${order.state_order=='待支付'}">
                                        <td><span class="label label-default">${order.state_order}</span></td>
                                    </c:when>
                                    <c:when test="${order.state_order=='已发货'}">
                                        <td><span class="label label-primary">${order.state_order}</span></td>
                                    </c:when>
                                    <c:when test="${order.state_order=='已退款'}">
                                        <td><span class="label label-warning">${order.state_order}</span></td>
                                    </c:when>
                                </c:choose>
                                <td>
                                    <a href="/ugoods/to_orderBuy?id_order=${order.id_order}">购买</a>
                                    <a href="/ugoods/to_remove?id_order=${order.id_order}">移除订单</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>