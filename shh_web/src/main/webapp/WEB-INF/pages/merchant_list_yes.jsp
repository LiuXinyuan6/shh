<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="top.jsp"/>
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
                    <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                        <thead>
                        <tr class="">
                            <th class="text-center hidden-xs">Select</th>
                            <th class="hidden-xs">订单编号</th>
                            <th class="hidden-xs">商品编号</th>
                            <th class="hidden-xs">买家编号</th>
                            <%--                            <th class="hidden-xs">买家名称</th>--%>
                            <th class="hidden-xs">商品名称</th>
                            <th class="hidden-xs">商品价格</th>
                            <th class="hidden-xs">商品类型</th>
                            <th class="hidden-xs">订单状态</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="order">
                            <tr class="message-unread">
                                <td class="hidden-xs">
                                    <label class="option block mn">
                                        <input type="checkbox" name="mobileos" value="FR">
                                        <span class="checkbox mn"></span>
                                    </label>
                                </td>
                                <td>${order.id_order}</td>
                                <td>${order.id_goods}</td>
                                <td>${order.id_user}</td>
<%--                                <td>${order.name_user}</td>--%>
                                <th>${order.name_goods}</th>
                                <td>${order.price_goods}</td>
                                <td>${order.type_goods}</td>
                                <c:choose>
                                    <c:when test="${order.state_order=='已发货'}">
                                        <td><span class="label label-primary">${order.state_order}</span></td>
                                    </c:when>
                                    <c:when test="${order.state_order=='已退款'}">
                                        <td><span class="label label-default">${order.state_order}</span></td>
                                    </c:when>
                                </c:choose>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>